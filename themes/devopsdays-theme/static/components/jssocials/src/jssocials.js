(function(window, $, undefined) {

    var JSSOCIALS = "JSSocials",
        JSSOCIALS_DATA_KEY = JSSOCIALS;

    var getOrApply = function(value, context) {
        if($.isFunction(value)) {
            return value.apply(context, $.makeArray(arguments).slice(2));
        }
        return value;
    };

    var IMG_SRC_REGEX = /(\.(jpeg|png|gif|bmp|svg)$|^data:image\/(jpeg|png|gif|bmp|svg\+xml);base64)/i;
    var URL_PARAMS_REGEX = /(&?[a-zA-Z0-9]+=)?\{([a-zA-Z0-9]+)\}/g;

    var MEASURES = {
        "G": 1000000000,
        "M": 1000000,
        "K": 1000
    };

    var shares = {};

    function Socials(element, config) {
        var $element = $(element);

        $element.data(JSSOCIALS_DATA_KEY, this);

        this._$element = $element;

        this.shares = [];

        this._init(config);
        this._render();
    }

    Socials.prototype = {
        url: "",
        text: "",
        shareIn: "blank",

        showLabel: function(screenWidth) {
            return (this.showCount === false) ?
                (screenWidth > this.smallScreenWidth) :
                (screenWidth >= this.largeScreenWidth);
        },

        showCount: function(screenWidth) {
            return (screenWidth <= this.smallScreenWidth) ? "inside" : true;
        },

        smallScreenWidth: 640,
        largeScreenWidth: 1024,

        resizeTimeout: 200,

        elementClass: "jssocials",
        sharesClass: "jssocials-shares",
        shareClass: "jssocials-share",
        shareButtonClass: "jssocials-share-button",
        shareLinkClass: "jssocials-share-link",
        shareLogoClass: "jssocials-share-logo",
        shareLabelClass: "jssocials-share-label",
        shareLinkCountClass: "jssocials-share-link-count",
        shareCountBoxClass: "jssocials-share-count-box",
        shareCountClass: "jssocials-share-count",
        shareZeroCountClass: "jssocials-share-no-count",

        _init: function(config) {
            this._initDefaults();
            $.extend(this, config);
            this._initShares();
            this._attachWindowResizeCallback();
        },

        _initDefaults: function() {
            this.url = window.location.href;
            this.text = $.trim($("meta[name=description]").attr("content") || $("title").text());
        },

        _initShares: function() {
            this.shares = $.map(this.shares, $.proxy(function(shareConfig) {
                if(typeof shareConfig === "string") {
                    shareConfig = { share: shareConfig };
                }

                var share = (shareConfig.share && shares[shareConfig.share]);

                if(!share && !shareConfig.renderer) {
                    throw Error("Share '" + shareConfig.share + "' is not found");
                }

                return $.extend({ url: this.url, text: this.text }, share, shareConfig);
            }, this));
        },

        _attachWindowResizeCallback: function() {
            $(window).on("resize", $.proxy(this._windowResizeHandler, this));
        },

        _detachWindowResizeCallback: function() {
            $(window).off("resize", this._windowResizeHandler);
        },

        _windowResizeHandler: function() {
            if($.isFunction(this.showLabel) || $.isFunction(this.showCount)) {
                window.clearTimeout(this._resizeTimer);
                this._resizeTimer = setTimeout($.proxy(this.refresh, this), this.resizeTimeout);
            }
        },

        _render: function() {
            this._clear();

            this._defineOptionsByScreen();

            this._$element.addClass(this.elementClass);

            this._$shares = $("<div>").addClass(this.sharesClass)
                .appendTo(this._$element);

            this._renderShares();
        },

        _defineOptionsByScreen: function() {
            this._screenWidth = $(window).width();
            this._showLabel = getOrApply(this.showLabel, this, this._screenWidth);
            this._showCount = getOrApply(this.showCount, this, this._screenWidth);
        },

        _renderShares: function() {
            $.each(this.shares, $.proxy(function(_, share) {
                this._renderShare(share);
            }, this));
        },

        _renderShare: function(share) {
            var $share;

            if($.isFunction(share.renderer)) {
                $share = $(share.renderer());
            } else {
                $share = this._createShare(share);
            }

            $share.addClass(this.shareClass)
                .addClass(share.share ? "jssocials-share-" + share.share : "")
                .addClass(share.css)
                .appendTo(this._$shares);
        },

        _createShare: function(share) {
            var $result = $("<div>");
            var $shareLink = this._createShareLink(share).appendTo($result);

            if(this._showCount) {
                var isInsideCount = (this._showCount === "inside");
                var $countContainer = isInsideCount ? $shareLink : $("<div>").addClass(this.shareCountBoxClass).appendTo($result);
                $countContainer.addClass(isInsideCount ? this.shareLinkCountClass : this.shareCountBoxClass);
                this._renderShareCount(share, $countContainer);
            }

            return $result;
        },

        _createShareLink: function(share) {
            var shareStrategy = this._getShareStrategy(share);

            var $result = shareStrategy.call(share, {
                shareUrl: this._getShareUrl(share)
            });

            $result.addClass(this.shareLinkClass)
                .append(this._createShareLogo(share));

            if(this._showLabel) {
                $result.append(this._createShareLabel(share));
            }

            $.each(this.on || {}, function(event, handler) {
                if($.isFunction(handler)) {
                    $result.on(event, $.proxy(handler, share));
                }
            });

            return $result;
        },

        _getShareStrategy: function(share) {
            var result = shareStrategies[share.shareIn || this.shareIn];

            if(!result)
                throw Error("Share strategy '" + this.shareIn + "' not found");

            return result;
        },

        _getShareUrl: function(share) {
            var shareUrl = getOrApply(share.shareUrl, share);
            return this._formatShareUrl(shareUrl, share);
        },

        _createShareLogo: function(share) {
            var logo = share.logo;

            var $result = IMG_SRC_REGEX.test(logo) ?
                $("<img>").attr("src", share.logo) :
                $("<i>").addClass(logo);

            $result.addClass(this.shareLogoClass);

            return $result;
        },

        _createShareLabel: function(share) {
            return $("<span>").addClass(this.shareLabelClass)
                .text(share.label);
        },

        _renderShareCount: function(share, $container) {
            var $count = $("<span>").addClass(this.shareCountClass);

            $container.addClass(this.shareZeroCountClass)
                .append($count);

            this._loadCount(share).done($.proxy(function(count) {
                if(count) {
                    $container.removeClass(this.shareZeroCountClass);
                    $count.text(count);
                }
            }, this));
        },

        _loadCount: function(share) {
            var deferred = $.Deferred();
            var countUrl = this._getCountUrl(share);

            if(!countUrl) {
                return deferred.resolve(0).promise();
            }

            var handleSuccess = $.proxy(function(response) {
                deferred.resolve(this._getCountValue(response, share));
            }, this);

            $.getJSON(countUrl).done(handleSuccess)
                .fail(function() {
                    $.get(countUrl).done(handleSuccess)
                        .fail(function() {
                            deferred.resolve(0);
                        });
                });

            return deferred.promise();
        },

        _getCountUrl: function(share) {
            var countUrl = getOrApply(share.countUrl, share);
            return this._formatShareUrl(countUrl, share);
        },

        _getCountValue: function(response, share) {
            var count = ($.isFunction(share.getCount) ? share.getCount(response) : response) || 0;
            return (typeof count === "string") ? count : this._formatNumber(count);
        },

        _formatNumber: function(number) {
            $.each(MEASURES, function(letter, value) {
                if(number >= value) {
                    number = parseFloat((number / value).toFixed(2)) + letter;
                    return false;
                }
            });

            return number;
        },

        _formatShareUrl: function(url, share) {
            return url.replace(URL_PARAMS_REGEX, function(match, key, field) {
                var value = share[field] || "";
                return value ? (key || "") + window.encodeURIComponent(value) : "";
            });
        },

        _clear: function() {
            window.clearTimeout(this._resizeTimer);
            this._$element.empty();
        },

        _passOptionToShares: function(key, value) {
            var shares = this.shares;

            $.each(["url", "text"], function(_, optionName) {
                if(optionName !== key)
                    return;

                $.each(shares, function(_, share) {
                    share[key] = value;
                });
            });
        },

        _normalizeShare: function(share) {
            if($.isNumeric(share)) {
                return this.shares[share];
            }

            if(typeof share === "string") {
                return $.grep(this.shares, function(s) {
                    return s.share === share;
                })[0];
            }

            return share;
        },

        refresh: function() {
            this._render();
        },

        destroy: function() {
            this._clear();
            this._detachWindowResizeCallback();

            this._$element
                .removeClass(this.elementClass)
                .removeData(JSSOCIALS_DATA_KEY);
        },

        option: function(key, value) {
            if(arguments.length === 1) {
                return this[key];
            }

            this[key] = value;

            this._passOptionToShares(key, value);

            this.refresh();
        },

        shareOption: function(share, key, value) {
            share = this._normalizeShare(share);

            if(arguments.length === 2) {
                return share[key];
            }

            share[key] = value;
            this.refresh();
        }
    };


    $.fn.jsSocials = function(config) {
        var args = $.makeArray(arguments),
            methodArgs = args.slice(1),
            result = this;

        this.each(function() {
            var $element = $(this),
                instance = $element.data(JSSOCIALS_DATA_KEY),
                methodResult;

            if(instance) {
                if(typeof config === "string") {
                    methodResult = instance[config].apply(instance, methodArgs);
                    if(methodResult !== undefined && methodResult !== instance) {
                        result = methodResult;
                        return false;
                    }
                } else {
                    instance._detachWindowResizeCallback();
                    instance._init(config);
                    instance._render();
                }
            } else {
                new Socials($element, config);
            }
        });

        return result;
    };

    var setDefaults = function(config) {
        var component;

        if($.isPlainObject(config)) {
            component = Socials.prototype;
        } else {
            component = shares[config];
            config = arguments[1] || {};
        }

        $.extend(component, config);
    };

    var shareStrategies = {
        popup: function(args) {
            return $("<a>").attr("href", "#")
                .on("click", function() {
                    window.open(args.shareUrl, null, "width=600, height=400, location=0, menubar=0, resizeable=0, scrollbars=0, status=0, titlebar=0, toolbar=0");
                    return false;
                });
        },

        blank: function(args) {
            return $("<a>").attr({ target: "_blank", href: args.shareUrl });
        },

        self: function(args) {
            return $("<a>").attr({ target: "_self", href: args.shareUrl });
        }
    };

    window.jsSocials = {
        Socials: Socials,
        shares: shares,
        shareStrategies: shareStrategies,
        setDefaults: setDefaults
    };

}(window, jQuery));

