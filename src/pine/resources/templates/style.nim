const cssCode* = """
body {
  margin: 0;
  overflow-x: hidden;
  height: 100vh;
  width: 100vw;
  text-align: center;
  font-family: 'Roboto Mono', monospace;
  border-top: 5px solid #f61600;
}

ul {
  list-style: none;
  margin: 0;
  padding: 0;
}

.nav {
  width: 100%;
  margin-bottom: 7em;
}

.nav img {
  width: 50px;
  margin: 0 .3em 0 .8em;
}

.nav a {
  float: left;
  font-size: 2em;
  color: #f61600;
  margin-top: .5em;
  font-weight: bold;
}

.nav a:hover {
  color: #f61600;
}

.main_header {
  margin-top: 100px;
}

.main_header h1 {
  text-transform: capitalize;
  padding: 0;
  margin: 0;
  font-weight: bold;
  color: #f61600;
  letter-spacing: 5px;
}

.main_header p {
  font-size: 1.4em;
}

.top_section {
  margin-right: 10px;
  border-bottom: 5px solid #e3eae5;
}

.top_section p {
  margin: 0 10px 10px 0;
  padding: 0 .3em;
}

.menu_list {
  border-bottom: 5px solid #e3eae5;
}

.social_button, .read_more_button {
  border: 1px solid #8c8c8c;
  color: #8c8c8c;
  font-size: 0.6em;
  margin: 20px;
  height: auto;
}

.social_button:hover, .read_more_button:hover, .to_top_button:hover {
  border: 1px solid #f61600;
  background-color: #f61600;
  color: white;
}

.facebook_button, .twitter_button {
  font-size: 0.8em;
  margin: 20px;
  height: auto;
  float: right;
}

.facebook_button, .facebook_button:hover {
  background-color: #4267B2;
  color: white;
  border: none;
}

.twitter_button, .twitter_button:hover {
  background-color: #1DA1F2;
  color: white;
  border: none;
}

.page {
  margin: 0 auto;
  margin-top: 40px;
  margin-bottom: 10px;
  max-width: 600px;
  padding: 0 .5em 2em;
  text-align: left;
  border-bottom: .01rem solid #e3eae5;
  font-size: 1.3em;
}

.page-title {
  text-transform: capitalize;
  margin-bottom: .5em;
  text-decoration: underline;
  text-underline-position: under;
}

.page-title:hover {
  color: #f61600;
}

.post_link {
  max-height: 1000px;
  white-space: nowrap;
  overflow: hidden !important;
  text-overflow: ellipsis;
  font-family: 'Roboto Mono', monospace;
}

.post_link, .post_ext {
  margin: 0 auto;
  margin-top: 40px;
  margin-bottom: 10px;
  max-width: 600px;
  padding-left: 10px;
  padding-right: 10px;
  text-align: left;
  border-bottom: .01rem solid #e3eae5;
}

.post_link, .post_ext img {
  max-width: 600px;
  width: 100%;
}

.type_date {
  margin: 5px;
  text-transform: uppercase;
  font-weight: 900;
  text-align: left;
}

.type_title {
  margin: 5px 0;
  font-weight: bold;
  font-size: 2.5em;
  text-transform:capitalize;
}

.type_title a {
  color:#383f3d;
}

.type_title a:hover {
  color: #f61600;
}


.content {
  font-family: 'Roboto Mono', monospace;
}

.read_more {
  text-align: left;
}

.read_more_button {
  font-size: 0.8em;
  margin: 20px 0;
}

.empty_section {
  margin-top: 3em;
  text-align: right;
  border-top: .01rem solid #e3eae5;
}

.to_top {}

.to_top_button {
  margin: 3em;
  border: 1px solid #8c8c8c;
  color: #8c8c8c;
  font-size: 0.8em;
  height: auto;
}

footer {
  border-top: .01rem solid #e3eae5;
  min-height: 10rem;
}

.footer_message {
  margin: 3em 0 5em 0;
}

a {
  color: #8c8c8c;
}

a:hover {
  color: #f61600;
}

.menu-right {
  position: fixed;
  right: 0;
  top: 0;
  height: 100vh;
  width: auto;
  transform: translate(100vw, 0);
  -ms-transform: translatex(-100vw);
  box-sizing: border-box;
  pointer-events: none;
  padding: 100px 0 0 20px;
  transition: width 475ms ease-out, transform 450ms ease, border-radius .8s .1s ease;
  border-bottom-left-radius: 100vw;
  background-color: white;
  border-left: 1px solid #e4e4e4;
}

.menu-right ul {
  height: 100%;
  width: 100%;
  margin: 0;
  padding: 0;
  overflow: auto;
  overflow-x: hidden;
  pointer-events: auto;
}

.menu-right li {
  list-style: none;
  text-transform: capitalize;
  pointer-events: auto;
  white-space: nowrap;
  box-sizing: border-box;
  transform: translatex(100vw);
}

.menu-right li:last-child {
  margin-bottom: 2em;
}

.menu-right li a {
  text-decoration: none;
  color: #8c8c8c;
  text-align: center;
  display: block;
  margin-top: .3em;
  margin-right: 10px;
  padding: .3em;
  font-size: 1.1em;
}

.menu-right li a:hover {
  cursor: pointer;
  border-bottom: 5px solid #f61600;
}

input.hamburger {
  display: none;
}

input.hamburger:checked~.menu-right {
  transform: translatex(0);
  border-bottom-left-radius: 0;
}

input.hamburger:checked~.menu-right li {
  transform: translatex(0);
}

input.hamburger:checked~.menu-right li:nth-child(1) {
  transition: transform 1s 0.08s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(2) {
  transition: transform 1s 0.16s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(3) {
  transition: transform 1s 0.24s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(4) {
  transition: transform 1s 0.32s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(5) {
  transition: transform 1s 0.4s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(6) {
  transition: transform 1s 0.48s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(7) {
  transition: transform 1s 0.56s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(8) {
  transition: transform 1s 0.64s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(9) {
  transition: transform 1s 0.72s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(10) {
  transition: transform 1s 0.8s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(11) {
  transition: transform 1s 0.88s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(12) {
  transition: transform 1s 0.96s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(13) {
  transition: transform 1s 1.04s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(14) {
  transition: transform 1s 1.12s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(15) {
  transition: transform 1s 1.2s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(16) {
  transition: transform 1s 1.28s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(17) {
  transition: transform 1s 1.36s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(18) {
  transition: transform 1s 1.44s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(19) {
  transition: transform 1s 1.52s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(20) {
  transition: transform 1s 1.6s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(21) {
  transition: transform 1s 1.68s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(22) {
  transition: transform 1s 1.76s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(23) {
  transition: transform 1s 1.84s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(24) {
  transition: transform 1s 1.92s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(25) {
  transition: transform 1s 2s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(26) {
  transition: transform 1s 2.08s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(27) {
  transition: transform 1s 2.16s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(28) {
  transition: transform 1s 2.24s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(29) {
  transition: transform 1s 2.32s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(30) {
  transition: transform 1s 2.4s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(31) {
  transition: transform 1s 2.48s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(32) {
  transition: transform 1s 2.56s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(33) {
  transition: transform 1s 2.64s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(34) {
  transition: transform 1s 2.72s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(35) {
  transition: transform 1s 2.8s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(36) {
  transition: transform 1s 2.88s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(37) {
  transition: transform 1s 2.96s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(38) {
  transition: transform 1s 3.04s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(39) {
  transition: transform 1s 3.12s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(40) {
  transition: transform 1s 3.2s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(41) {
  transition: transform 1s 3.28s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(42) {
  transition: transform 1s 3.36s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(43) {
  transition: transform 1s 3.44s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(44) {
  transition: transform 1s 3.52s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(45) {
  transition: transform 1s 3.6s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(46) {
  transition: transform 1s 3.68s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(47) {
  transition: transform 1s 3.76s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(48) {
  transition: transform 1s 3.84s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(49) {
  transition: transform 1s 3.92s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li:nth-child(50) {
  transition: transform 1s 4s cubic-bezier(0.29, 1.4, 0.44, 0.96);
}

input.hamburger:checked~.menu-right li a {
  padding-right: 15px;
}

input.hamburger:checked~label>i {
  background-color: transparent;
  transform: rotate(90deg);
}

input.hamburger:checked~label>i:before {
  transform: translate(-50%, -50%) rotate(315deg);
}

input.hamburger:checked~label>i:after {
  transform: translate(-50%, -50%) rotate(-315deg);
}

input.hamburger:checked~label close {
  color: #FEFEFE;
  width: 100%;
}

input.hamburger:checked~label open {
  color: rgba(0, 0, 0, 0);
  width: 0;
}

label.hamburger {
  z-index: 9999;
  position: relative;
  display: block;
  height: 50px;
  width: 50px;
}

label.hamburger:hover {
  cursor: pointer;
}

label.hamburger>i {
  position: absolute;
  width: 100%;
  height: 2px;
  top: 50%;
  right:10px
  background-color: #8c8c8c;
  pointer-events: auto;
  transition-duration: .35s;
  transition-delay: .35s;
}

label.hamburger>i:before, label.hamburger>i:after {
  position: absolute;
  display: block;
  width: 100%;
  height: 2px;
  left: 50%;
  background-color: #8c8c8c;
  content: "";
  transition: transform 0.35s;
  transform-origin: 50% 50%;
}

label.hamburger>i:before {
  transform: translate(-50%, -14px);
}

label.hamburger>i:after {
  transform: translate(-50%, 14px);
}

label.hamburger {
  position: fixed;
  top: 10px;
  right: 10px;
}

#disqus_thread {
  margin: 0 auto;
  margin-top: 40px;
  margin-bottom: 10px;
  max-width: 600px;
  padding-left: 10px;
  padding-right: 10px;
}

.comment_count {
  float: right;
  margin-top: 1.5em;
}
"""
