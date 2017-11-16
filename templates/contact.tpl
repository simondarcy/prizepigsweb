{extends 'base.tpl'} 

{block "content"}
<div class="gap"></div>
<div class="container content" data-page="contact">
<div class="row row-wrap">
    <div class="col-md-4">
        <div class="pig-large"></div>
    </div>
    <div class="col-md-4">
        <form name="contactForm" id="contact-form" class="contact-form" method="post" action="includes/mail/index.php">
            <fieldset>
                <div class="form-group">
                    <label>Name</label>
                    <div class="bg-warning form-alert" id="form-alert-name">Please enter your name</div>
                    <input class="form-control" id="name" name="name" type="text" placeholder="Enter Your name here" />
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <div class="bg-warning form-alert" id="form-alert-email">Please enter your valid E-mail</div>
                    <input class="form-control" id="email" name="email" type="text" placeholder="You E-mail Address" />
                </div>
                <div class="form-group">
                    <label>Message</label>
                    <div class="bg-warning form-alert" id="form-alert-message">Please enter message</div>
                    <textarea name="message" class="form-control" id="message" placeholder="Your message"></textarea>
                </div>
                <div class="bg-warning alert-success form-alert" id="form-alert-success">Your message has been sent successfully!</div>
                <div class="bg-warning alert-error form-alert" id="form-alert-fail">Sorry, error occured this time sending your message</div>

                <button id="send-message" type="submit" class="btn btn-primary">Send Message</button>
            </fieldset>
        </form>
    </div>
    <div class="col-md-4">
        <h3>Oink Oink</h3>
        <p class="title">Competitions</p>
<p>If you'd like to run a competition with us or have a query please contact our team: <a href="mailto:info@prizepigs.ie">info@prizepigs.ie</a> or <a href="tel:+353861524677">086 1524 677</a></p>
<p class="title">Advertising</p>
<p>For all advertising queries, please contact our sales team: <a href="mailto:info@prizepigs.ie">info@prizepigs.ie</a> or <a href="tel:+353861524677">086 1524 677</a></p>
        <ul class="list">
            <li><i class="icon-map-marker"></i> Location: Our Address</li>
            <li><i class="icon-phone"></i> Phone: 086 1524 677</li>
            <li><i class="icon-envelope"></i> E-mail: <a href="mailto:info@prizepigs.ie">info@prizepigs.ie</a>
            </li>
        </ul>
    </div>
</div>
<div class="gap gap-small"></div>
</div>


{/block}




