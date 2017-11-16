<!-- MAIN NAVIGATION -->
<div class="flexnav-menu-button" id="flexnav-menu-button">
    <!-- Hamburgler -->
</div>
<nav>
    <a class="logo large" href="index.php"></a>
    <ul class="nav nav-pills flexnav" id="flexnav" data-breakpoint="800">
        <li id="menu-home">
            <a href="index.php">Home</a>
        </li>
        <li id="menu-categories">
            <a href="index.php">Categories</a>
            <ul>
                <li>
                    <a href="latest.php">Latest</a>
                </li>
                <li>
                    <a href="category.php?category=entertainment">Entertainment</a>
                </li>
                <li>
                    <a href="category.php?category=sport">Sport & Leisure</a>
                </li>
                <li>
                    <a href="category.php?category=food">Food & Drink</a>
                </li>
                <li>
                    <a href="category.php?category=travel">Travel</a>
                </li>
                <li>
                    <a href="category.php?category=kids">Kids & Pets</a>
                </li>
                <li>
                    <a href="category.php?category=health">Health & Beauty</a>
                </li>
                <li>
                    <a href="category.php?category=electronics">Electronics</a>
                </li>
             </ul>
        </li>
        <li id="menu-ending"><a href="ending.php">Ending Soon</a></li>
        <li id="menu-ways"><a href="pages.php?page=ways">Ways to win</a></li>

        <li id="menu-winners"><a href="winners.php">Winners</a></li>
        <li id="menu-about"><a href="pages.php?page=about">About</a></li>
        <li id="menu-contact"><a href="contact.php">Contact</a></li>
        <li id="menu-login" class="hide-for-desktop">
            {nocache}{if $user}<a href="logout.php">Logout</a>{else}<a href="login.php">Sign In</a>{/if}{/nocache}
        </li>
            </ul>
        </li>
    </ul>
</nav>
    <!-- END MAIN NAVIGATION -->