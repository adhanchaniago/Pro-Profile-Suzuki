<!-- ALL JS FILES -->
<script src="<?= base_url('assets/frontend/js/all.js'); ?>"></script>
<!-- Camera Slider -->
<script src="<?= base_url('assets/frontend/js/jquery.mobile.customized.min.js'); ?>"></script>
<script src="<?= base_url('assets/frontend/js/jquery.easing.1.3.js'); ?>"></script>
<script src="<?= base_url('assets/frontend/js/camera.min.js'); ?>"></script>
<script src="<?= base_url('assets/frontend/js/scrollIt.min.js'); ?>"></script>
<!-- ALL PLUGINS -->
<script src="<?= base_url('assets/frontend/js/custom.js'); ?>"></script>
<!-- <script src="<?= base_url('assets/frontend/js/jquery.vide.js'); ?>"></script> -->


<!-- WhatsHelp.io widget -->
<script type="text/javascript">
    (function() {
        var options = {
            whatsapp: "<?= $kontak->contact_nohp ?>", // WhatsApp number
            call: "+<?= $kontak->contact_nohp ?>", // Call phone number
            call_to_action: "Hubungi Kami Disini", // Call to action
            button_color: "#E74339", // Color of button
            position: "right", // Position may be 'right' or 'left'
            order: "whatsapp,call", // Order of buttons
        };
        var proto = document.location.protocol,
            host = "whatshelp.io",
            url = proto + "//static." + host;
        var s = document.createElement('script');
        s.type = 'text/javascript';
        s.async = true;
        s.src = url + '/widget-send-button/js/init.js';
        s.onload = function() {
            WhWidgetSendButton.init(host, proto, options);
        };
        var x = document.getElementsByTagName('script')[0];
        x.parentNode.insertBefore(s, x);
    })();
</script>
<!-- /WhatsHelp.io widget -->

<script src="https://suzukicdn.net/themes/default2019/js/aos.js"></script>
<script src="https://suzukicdn.net/themes/default2019/js/owl.carousel.min.js"></script>
<script src="https://suzukicdn.net/themes/default2019/js/app.min.js?v=1.1.10"></script>

<script src="https://suzukicdn.net/themes/default2019/js/owl.carousel.min.js"></script>