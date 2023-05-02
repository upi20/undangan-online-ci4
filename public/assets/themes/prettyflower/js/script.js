
(function($) {

    "use strict";
    /*------------------------------------------
        = ACTIVE POPUP IMAGE
    -------------------------------------------*/
    if ($(".fancybox").length) {
        $(".fancybox").fancybox({
            openEffect  : "elastic",
            closeEffect : "elastic",
            wrapCSS     : "project-fancybox-title-style"
        });
    }


    /*------------------------------------------
        = POPUP VIDEO
    -------------------------------------------*/
    if ($(".video-play-btn").length) {
        $(".video-play-btn").on("click", function(){
            audio_play.pause();
            $('.my-musik').removeClass('fa-volume-up');
            $('.my-musik').addClass('fa-volume-off');
            $.fancybox({
                href: this.href,
                type: $(this).data("type"),
                'title'         : this.title,
                helpers     : {
                    title : { type : 'inside' },
                    media : {}
                },

                beforeShow : function(){
                    $(".fancybox-wrap").addClass("gallery-fancybox");
                },
                afterClose: function () {
                    audio_play.play();
                    $('.my-musik').removeClass('fa-volume-off');
                    $('.my-musik').addClass('fa-volume-up');
                }
            });
            return false
        });
    }
    /* =================
        sampul awal THE BEGINING
    =================*/
    $('#konten').hide(); //hided konten scr deafult
    $("#buka-undangan").click(function(){
        $('.thebegining').hide(); //hide the begining
        $('#konten').show()  //show konten
        $("#audio").get(0).play(); //play musik
        document.documentElement.requestFullscreen();  //fullscreen
    
    });

     /*------------------------------------------
        = NAV BOTTOM BAR
    -------------------------------------------*/

    var navItems = document.querySelectorAll(".mobile-bottom-nav__item");
        navItems.forEach(function(e, i) {
            e.addEventListener("click", function(e) {
                navItems.forEach(function(e2, i2) {
                    e2.classList.remove("mobile-bottom-nav__item--active");
                })
                this.classList.add("mobile-bottom-nav__item--active");
            });
        });


    $(".icons").click(function(){

        $("#nav2").animate({
            height: "toggle",
            opacity: "toggle",
          },100, 'linear');

        $("#lain").animate({
            height: "toggle",
            opacity: "toggle",
          },200, 'linear');

        $("#tutup").toggleClass('rotate');

    });

    $("#lain").click(function(){

        $("#nav2").animate({
            height: "toggle",
            opacity: "toggle",
          },100, 'linear');

        $("#lain").animate({
            height: "toggle",
            opacity: "toggle",
          },200, 'linear');

        $("#tutup").toggleClass('rotate');

    });

    var $allContentDivs = $('#sampul-konten, #mempelai-konten, #hadir-konten, #acara-konten, #album-konten, #ucapan-konten, #lokasi-konten, #cerita-konten, #hadiah-konten, #prokes-konten').hide(); // Hide All Content Divs
    
    $("#sampul-konten").show();
    $(".dekorasi-sampul").show();
    $(".dekorasi-all").hide();
    

    $('#sampul, #mempelai, #acara, #hadir, #album, #ucapan, #lokasi, #cerita, #hadiah, #prokes').click(function(){
        var $contentDiv = $("#" + this.id + "-konten");

        if(this.id == "sampul"){
            
            $("#imgbawah").hide();
            $(".dekorasi-sampul").show();
            $(".dekorasi-all").hide();
            // $("#imgatas").hide();

        }else{

            $("#imgbawah").show();
            $(".dekorasi-sampul").hide();
            $(".dekorasi-all").show();    

            
        }
        if($contentDiv.is(":visible")) {
        } else {            
            $allContentDivs.hide(); // Hide All Divs
            $contentDiv.show(); // Show Div
        }
        
        $('body,html').animate({
                scrollTop: 0
        }, 600);

    });

    /*=======================================
        Load more content with jQuery - May 21, 2013
        (c) 2013 @ElmahdiMahmoud
    ================================*/   

    $(".komen").slice(0, 4).show();
    $("#loadMore").on('click', function (e) {
        e.preventDefault();
        $(".komen:hidden").slice(0, 4).slideDown();
        if ($(".komen:hidden").length == 0) {
            $("#loadMore").fadeOut('slow');
        }
        $('html,body').animate({
            scrollTop: $(this).offset().top
        }, 1500);
    });

    /*=================
     ADD KOMENTAR
    ======================= */
    $('#submitKomen').on('click', function(event) {

        $('#loading_').css('display','inline');
        $('#submitKomen').css('display','none');
        
        var nama =  $('#nama').val();
        var komentar =  $('#komentar').val();

        $.ajax({
            url : base_url+'/add_komentar',
            method : "POST",
            data : {nama: nama,komentar: komentar},
            async : true,
            dataType : 'html',
            success: function(hasil){
                var json = JSON.parse(hasil);
                var status = json.status;
                var nama = json.nama;
                var komentar = json.komentar;
                console.log(json);

                if(status == 'sukses'){
                    
                    $('.layout-komen').append("<div class='komen' style='display:block'><div class='col-12 komen-nama'>"+nama+"</div><div class='col-12 komen-isi'>"+komentar+"</div></div>");

                    $(".komen:hidden").slice(0, 100).slideDown();
                    $("html, body").animate({ scrollTop: $(document).height() }, 1000);
                    $("#loadMore").fadeOut('slow');

                    $('#loading_').css('display','none');
                    $('#submitKomen').css('display','block');
                    $('#submitKomen').prop('disabled', true); 
                }
               
            }
        });

    });
    
        var audio_button = document.getElementById("music-button");
    var audio_play = document.getElementById("audio");
    
    audio_button.addEventListener("click", function(){
    if(audio_play.paused){
    audio_play.play();
    $('.my-musik').removeClass('fa-volume-off');
    $('.my-musik').addClass('fa-volume-up');
  } else {
    audio_play.pause();
    $('.my-musik').removeClass('fa-volume-up');
    $('.my-musik').addClass('fa-volume-off');
    
  }
});

})(window.jQuery);