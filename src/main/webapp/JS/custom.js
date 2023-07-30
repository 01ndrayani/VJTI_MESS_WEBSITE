        $(document).ready(function() {
            $("#header").load("header.html?v65");
            $("#footer").load("footer.html?v12");
            $("#myModal").modal('show');

            $(".title_text").each(function() {
                var len = $(this).text().trim().length;
                if (len > 300) {
                    $(this).text($(this).text().substr(0, 300) + '...');
                }
            });

            if ($(window).width() < 767) {
                $('.move_up_1').each(function() {
                    $(this).parent().prepend($(this));
                    $('.move_up_1').parent().removeClass(['remove_row', 'row']);
                });
                // $('#signup_bottom').each(function () {
                //   $(this).parent().prepend($(this));
                //   $('.move_up_1').parent().removeClass(['remove_row', 'row']);
                // });

                $('.move_up_1_profile').each(function() {
                    $(this).parent().prepend($(this));
                });
            }

            if ($(window).width() < 767) {
                $('.move_up_2').each(function() {
                    $(this).parent().parent().prepend($(this));
                    $(".move_up_2").parent().removeClass(["remove_row", "row"]);
                });
            }
            if ($(window).width() < 767) {
                var online_order = $(".online_order").height();
                $(".res_height").css("min-height", +online_order + "px");
                $(".online_order").removeClass(["text-right"]);
            }
        });

        $(window).scroll(function() {
            var header_height = $("#header").height();
            var header_bg_height = $(".header_bg").height();
            var header_video = $(window).height();
            //  alert(header_video);
            // $('#header').toggleClass('fixed-top', $(this).scrollTop() > header_video);
            // $('.display_none .common_header .row .navbar .top_img .after_scroll').addClass('d-block');
            // $('.display_none .common_header .row .navbar .top_img .before_scroll').toggleClass('d-block-index', $(this).scrollTop() > header_video/2);
            // $('.display_none .common_header .row navbar .top_img .after_scroll').toggleClass('d-block-index', $(this).scrollTop() > header_video/2);
            // $('.top_img .before_scroll').css('display', 'none', $(this).scrollTop() > header_video);

            // $('.display_none .after_scroll').addClass('d-block-index', $(this).scrollTop() > header_height);
            $('#header').toggleClass('fixed-top', $(this).scrollTop() > header_height);
            $('.top_img .after_scroll').toggleClass('d-block', $(this).scrollTop() > header_bg_height);
            $('.top_img .before_scroll').toggleClass('d-block', $(this).scrollTop() < header_bg_height);
            $('.top_img .before_scroll').css('display', 'none', $(this).scrollTop() > header_bg_height);
            // $('.display_none .common_header .row .navbar .top_img .after_scroll').css('display', 'block', $(this).scrollTop() > header_video);
            $('.no-header-bg .top_img .before_scroll').css('display', 'block', $(this).scrollTop() < header_bg_height);
        });

        jQuery(function($) {
            var doAnimations = function() {
                var offset = $(window).scrollTop() + $(window).height(),
                    $animatables = $('.animatable');
                if ($animatables.length == 0) {
                    $(window).off('scroll', doAnimations);
                }
                $animatables.each(function() {
                    var $animatable = $(this);
                    if (($animatable.offset().top + $animatable.height() - 0) < offset) {
                        $animatable.removeClass('animatable').addClass('animated');
                    }
                });
            };
            $(window).on('scroll', doAnimations);
            $(window).trigger('scroll');

        });

        function wcqib_refresh_quantity_increments() {
            jQuery("div.quantity:not(.buttons_added), td.quantity:not(.buttons_added)").each(function(a, b) {
                var c = jQuery(b);
                c.addClass("buttons_added"), c.children().first().before('<input type="button" value="-" class="minus" />'), c.children().last().after('<input type="button" value="+" class="plus" />')
            })
        }
        String.prototype.getDecimals || (String.prototype.getDecimals = function() {
            var a = this,
                b = ("" + a).match(/(?:\.(\d+))?(?:[eE]([+-]?\d+))?$/);
            return b ? Math.max(0, (b[1] ? b[1].length : 0) - (b[2] ? +b[2] : 0)) : 0
        }), jQuery(document).ready(function() {
            wcqib_refresh_quantity_increments()
        }), jQuery(document).on("updated_wc_div", function() {
            wcqib_refresh_quantity_increments()
        }), jQuery(document).on("click", ".plus, .minus", function() {
            var a = jQuery(this).closest(".quantity").find(".qty"),
                b = parseFloat(a.val()),
                c = parseFloat(a.attr("max")),
                d = parseFloat(a.attr("min")),
                e = a.attr("step");
            b && "" !== b && "NaN" !== b || (b = 0), "" !== c && "NaN" !== c || (c = ""), "" !== d && "NaN" !== d || (d = 0), "any" !== e && "" !== e && void 0 !== e && "NaN" !== parseFloat(e) || (e = 1), jQuery(this).is(".plus") ? c && b >= c ? a.val(c) : a.val((b + parseFloat(e)).toFixed(e.getDecimals())) : d && b <= d ? a.val(d) : b > 0 && a.val((b - parseFloat(e)).toFixed(e.getDecimals())), a.trigger("change")
        });