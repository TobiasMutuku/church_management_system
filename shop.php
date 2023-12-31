<style>
    .img-thumb {
        width:13.5vw !important;
        height:31.5vh !important;
        object-fit:cover;
        object-position:center top;
        min-width: 180px;
    }
    .schedule-holder {
        position: absolute;
        padding: 5px 15px;
        top: 43%;
        font-size: 1.5em;
        font-weight: 700;
        background-color: #21252970 !important;
    }
    .read-holder{
        position: absolute;
        bottom:3px;
        left:-1px;
    }
</style>
<section class="py-5">
    <div class="container">
        <h3 class='text-center'>Shop Our Merchandise</h3>
        <hr>

    
    </div>
</section>
<script>
    $(function(){
        $('.read_more').click(function(){
            uni_modal("<i class='fa fa-calendar-day'></i> Upcoming Event",'view_event.php?id='+$(this).attr('data-id'))
        })
    })
</script>