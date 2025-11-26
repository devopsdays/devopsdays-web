# Plan to Fix Issue #12213: Label Non-Current Event Pages

## Issue Summary

**Title:** Label non-current event pages

**Problem Statement:**
Marketing teams and sponsors frequently encounter outdated event information when using search engines. Google search results often return previous years' event pages (e.g., 2022 Chicago) before current year pages (e.g., 2023 Chicago), causing confusion about:
- Outdated sponsorship pricing
- Incorrect availability status
- Which event is the current/active one

**Desired Solution:**
Add a banner to event pages that are NOT the most current year for a given city, identifying them as historical/archived and ideally providing a link to the current iteration of the event.

## Codebase Analysis

### Event Structure

1. **Data Storage:**
   - Event data is stored in `data/events/{year}/{city}/main.yml`
   - Each event has a `year`, `city`, `startdate`, `enddate`, and optional `event_group` field
   - Event slug format: `{year}-{city}` (e.g., `2023-new-york-city`)

2. **Content Structure:**
   - Event pages are in `content/events/{year}-{city}/`
   - Main template: `themes/devopsdays-theme/layouts/event/single.html`
   - Event-specific pages (welcome, program, etc.) use the event layout

3. **Event Detection Logic:**
   - The codebase already has functions to:
     - Get all events: `partials/functions/get-all-events.html`
     - Filter events by city/event_group (seen in `welcome.html` lines 90-116)
     - Determine if events are upcoming or past based on `enddate` vs `now`

4. **Template Structure:**
   - Event pages use `layouts/_default/baseof.html` as the base template
   - Event navbar is rendered via `partials/events/event_navbar.html`
   - Bootstrap alert components are available (`.alert`, `.alert-warning`, etc.)

### Key Files Identified

- `themes/devopsdays-theme/layouts/_default/baseof.html` - Base template for all pages
- `themes/devopsdays-theme/layouts/event/single.html` - Template for event pages
- `themes/devopsdays-theme/layouts/partials/events/event_navbar.html` - Event navigation
- `themes/devopsdays-theme/layouts/partials/functions/get-event-data.html` - Gets current event data
- `themes/devopsdays-theme/layouts/partials/functions/get-all-events.html` - Gets all events
- `themes/devopsdays-theme/layouts/partials/welcome.html` - Shows how to find events by city

## Solution Approach

### Phase 1: Create Function to Determine Current Event

**File:** `themes/devopsdays-theme/layouts/partials/functions/get-current-event-for-city.html`

This function will:
1. Accept the current event's city (or event_group if present) as input
2. Get all events using `get-all-events`
3. Filter events matching the city/event_group (case-insensitive, similar to welcome.html logic)
4. Determine the "current" event as:
   - First preference: The event with the latest `startdate` where `enddate > now` (future event)
   - Second preference: If no future event exists, the event with the latest `startdate` overall
5. Return the current event object (or empty if none found)

### Phase 2: Create Banner Partial

**File:** `themes/devopsdays-theme/layouts/partials/events/non-current-banner.html`

This partial will:
1. Get the current event data using `get-event-data`
2. Call the new function to determine the current event for that city
3. Compare the current page's event with the "current" event
4. If they don't match, display a Bootstrap alert banner with:
   - Warning/Info styling
   - Message: "This is a past event from [YEAR]. Visit the [YEAR] event page for current information."
   - Link to the current event's welcome page
   - Prominent positioning (top of content area)

### Phase 3: Integrate Banner into Event Pages

**File:** `themes/devopsdays-theme/layouts/event/single.html`

Modify to:
1. Include the banner partial before the main content
2. Ensure it appears on all event pages (welcome, program, speakers, sponsors, etc.)

**Alternative/Additional Location:** `themes/devopsdays-theme/layouts/_default/baseof.html`

Could also add the banner in the base template, checking if the page is an event page and conditionally rendering the banner. This would ensure it appears on ALL event pages automatically.

### Phase 4: Styling Considerations

1. Use Bootstrap alert component (`.alert-warning` or `.alert-info`)
2. Position at the top of the content area, below the navbar but above event content
3. Ensure it's responsive and visible on mobile devices
4. Consider accessibility: proper ARIA labels and high contrast

## Implementation Details

### Determining "Current" Event Logic

```hugo
{{- $currentEvent := dict -}}
{{- $futureEvents := slice -}}
{{- $pastEvents := slice -}}

{{- range $allEvents -}}
  {{- if matches city/event_group -}}
    {{- if gt (time .enddate) now -}}
      {{- $futureEvents = append . $futureEvents -}}
    {{- else -}}
      {{- $pastEvents = append . $pastEvents -}}
    {{- end -}}
  {{- end -}}
{{- end -}}

{{- if $futureEvents -}}
  {{- $currentEvent = (last (sort $futureEvents "startdate")) -}}
{{- else if $pastEvents -}}
  {{- $currentEvent = (last (sort $pastEvents "startdate")) -}}
{{- end -}}
```

### Banner Content

The banner should include:
- **Icon:** Consider using a calendar or clock icon (Font Awesome is available)
- **Message:** Clear indication this is a past event
- **Year:** Display the year of the current page
- **Link:** Link to current event's welcome page (`/events/{current-event-name}/`)
- **CTA:** "View [YEAR] event" or "Visit current event page"

### Edge Cases to Handle

1. **Event Group vs City Name:**
   - Some events use `event_group` instead of `city` for matching (e.g., "New York City")
   - Logic must check both fields (as done in welcome.html)

2. **City Name Variations:**
   - Case-insensitive matching required
   - Some cities may have changed naming (e.g., "newyork" vs "new-york-city")

3. **Events Without Start Dates:**
   - TBD events without start dates should be considered as potential "current" events
   - May need special handling

4. **Single-Year Events:**
   - If a city only has one event, that event is always "current" (banner should not show)

5. **Same-Year Multiple Events:**
   - Rare but possible - use latest startdate within the same year

6. **Canceled Events:**
   - Events marked with `cancel: "true"` should be excluded from "current" determination

## Testing Plan

### Test Cases

1. **Past Event Page:**
   - Visit `/events/2022-chicago/welcome`
   - Should show banner linking to 2023 (or current year) Chicago event

2. **Current Event Page:**
   - Visit `/events/2024-chicago/welcome`
   - Should NOT show banner (assuming 2024 is current)

3. **Cities with Event Groups:**
   - Test New York City which uses `event_group: "New York City"`
   - Banner should still work correctly

4. **Single Event Cities:**
   - Test cities that only have one year
   - Banner should not appear

5. **Multiple Page Types:**
   - Test banner appears on:
     - Welcome page
     - Program page
     - Speakers page
     - Sponsors page
     - Contact page
     - Any other event page

6. **Edge Cases:**
   - Events with no future events (all past)
   - TBD events (no startdate)
   - Canceled events

## Files to Create/Modify

### New Files

1. `themes/devopsdays-theme/layouts/partials/functions/get-current-event-for-city.html`
   - Function to determine current event for a city

2. `themes/devopsdays-theme/layouts/partials/events/non-current-banner.html`
   - Banner partial component

### Modified Files

1. `themes/devopsdays-theme/layouts/event/single.html`
   - Add banner partial inclusion

   OR

2. `themes/devopsdays-theme/layouts/_default/baseof.html`
   - Add conditional banner rendering for event pages

## Design Considerations

### Banner Appearance

Suggested design:
- **Style:** Bootstrap `.alert-warning` (yellow/amber) or `.alert-info` (blue)
- **Position:** Full-width at top of content, below navbar
- **Content Structure:**
  ```
  ⚠️ This is a past event from 2022. 
  Visit the 2024 event page for current information. [Link to 2024 event]
  ```

### Accessibility

- Use proper ARIA roles and labels
- Ensure sufficient color contrast
- Make link keyboard accessible
- Consider screen reader announcements

## Potential Improvements (Future)

1. **SEO Enhancement:**
   - Add canonical link tags pointing to current event
   - Add meta tags indicating this is archived content

2. **Banner Customization:**
   - Allow events to customize banner message via data file

3. **Analytics:**
   - Track clicks on "current event" links to measure impact

4. **Cache Optimization:**
   - Consider caching current event determination since it doesn't change frequently

## Open Questions

1. **Banner Visibility:**
   - Should the banner appear on ALL event pages or just certain ones (e.g., welcome, sponsors)?
   - Recommendation: ALL pages for maximum visibility

2. **Banner Persistence:**
   - Should banner be dismissible? Recommendation: No, to ensure users always see it

3. **Styling:**
   - Use warning (yellow) or info (blue)? Recommendation: Warning for better visibility

4. **Link Text:**
   - What should the link text say? Options:
     - "Visit [YEAR] event"
     - "Go to current event"
     - "View [YEAR] devopsdays [CITY]"

## Success Criteria

1. ✅ Banner appears on all non-current event pages
2. ✅ Banner correctly identifies current event for each city
3. ✅ Banner includes working link to current event
4. ✅ Banner is visually prominent but not intrusive
5. ✅ Banner works across all event page types
6. ✅ Handles edge cases (event groups, single events, etc.)
7. ✅ Mobile responsive
8. ✅ Accessible (keyboard navigation, screen readers)

## Estimated Effort

- Phase 1 (Function): 2-3 hours
- Phase 2 (Banner Partial): 1-2 hours  
- Phase 3 (Integration): 1 hour
- Phase 4 (Styling): 1-2 hours
- Testing: 2-3 hours

**Total Estimated Time:** 7-11 hours

## Next Steps

1. Review and approve this plan
2. Begin implementation starting with Phase 1
3. Test incrementally after each phase
4. Create pull request with implementation
5. Test on staging/preview environment
6. Gather feedback from maintainers
7. Merge and deploy

