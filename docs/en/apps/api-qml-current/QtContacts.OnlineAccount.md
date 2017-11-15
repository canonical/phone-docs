---
Title: QtContacts.OnlineAccount
---

# QtContacts.OnlineAccount

<span class="subtitle"></span>
<!-- $$$OnlineAccount-brief -->
<p>The OnlineAccount element contains a note associated with a contact. More...</p>
<!-- @@@OnlineAccount -->
<table class="alignedsummary">
<tr><td class="memItemLeft rightAlign topAlign"> Import Statement:</td><td class="memItemRight bottomAlign"> import QtContacts 5.0</td></tr></table><ul>
</ul>
<h2 id="properties">Properties</h2>
<ul>
<li class="fn"><b><b><a href="#accountUri-prop">accountUri</a></b></b> : string</li>
<li class="fn"><b><b><a href="#capabilities-prop">capabilities</a></b></b> : list&lt;string&gt;</li>
<li class="fn"><b><b><a href="#protocol-prop">protocol</a></b></b> : enumeration</li>
<li class="fn"><b><b><a href="#serviceProvider-prop">serviceProvider</a></b></b> : string</li>
<li class="fn"><b><b><a href="#subTypes-prop">subTypes</a></b></b> : list&lt;variant&gt;</li>
</ul>
<!-- $$$OnlineAccount-description -->
<h2 id="details">Detailed Description</h2>
</p>
<p><a href="index.html">OnlineAccount</a> element contains the following field types:</p>
<ul>
<li><a href="index.html">OnlineAccount</a>.AccountUri - the account uri value.</li>
<li><a href="index.html">OnlineAccount</a>.ServiceProvider - the account service provider name.</li>
<li><a href="index.html">OnlineAccount</a>.Protocol - the account protocol value.</li>
<li><a href="index.html">OnlineAccount</a>.Capabilities - the account capabilities value.</li>
<li><a href="index.html">OnlineAccount</a>.SubTypes - the sub types of an online account.</li>
</ul>
<p>This element is part of the <b>QtContacts</b> module.</p>
<!-- @@@OnlineAccount -->
<h2>Property Documentation</h2>
<!-- $$$accountUri -->
<table class="qmlname"><tr valign="top" id="accountUri-prop"><td class="tblQmlPropNode"><p><span class="name">accountUri</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the value of the account uri.</p>
<!-- @@@accountUri -->
<br/>
<!-- $$$capabilities -->
<table class="qmlname"><tr valign="top" id="capabilities-prop"><td class="tblQmlPropNode"><p><span class="name">capabilities</span> : <span class="type">list</span>&lt;<span class="type">string</span>&gt;</p></td></tr></table><p>This property holds the value of the account capabilities.</p>
<!-- @@@capabilities -->
<br/>
<!-- $$$protocol -->
<table class="qmlname"><tr valign="top" id="protocol-prop"><td class="tblQmlPropNode"><p><span class="name">protocol</span> : <span class="type">enumeration</span></p></td></tr></table><p>This property holds the protocol enumeration value.</p>
<ul>
<li><a href="index.html">OnlineAccount</a>.Unknown - indicates this online account is for one unsupported protocol.</li>
<li><a href="index.html">OnlineAccount</a>.Aim - indicates this online account is for the AIM protocol.</li>
<li><a href="index.html">OnlineAccount</a>.Icq - indicates this online account is for the ICQ protocol.</li>
<li><a href="index.html">OnlineAccount</a>.Irc - indicates this online account is for the IRC protocol.</li>
<li><a href="index.html">OnlineAccount</a>.Jabber - indicates this online account is for the jabber protocol.</li>
<li><a href="index.html">OnlineAccount</a>.Msn - indicates this online account is for the MSN protocol.</li>
<li><a href="index.html">OnlineAccount</a>.Qq - indicates this online account is for the QQ protocol.</li>
<li><a href="index.html">OnlineAccount</a>.Skype - indicates this online account is for the Skype protocol.</li>
<li><a href="index.html">OnlineAccount</a>.Yahoo - indicates this online account is for the Yahoo protocol.</li>
</ul>
<!-- @@@protocol -->
<br/>
<!-- $$$serviceProvider -->
<table class="qmlname"><tr valign="top" id="serviceProvider-prop"><td class="tblQmlPropNode"><p><span class="name">serviceProvider</span> : <span class="type">string</span></p></td></tr></table><p>This property holds the value of the account service provider name.</p>
<!-- @@@serviceProvider -->
<br/>
<!-- $$$subTypes -->
<table class="qmlname"><tr valign="top" id="subTypes-prop"><td class="tblQmlPropNode"><p><span class="name">subTypes</span> : <span class="type">list</span>&lt;<span class="type">variant</span>&gt;</p></td></tr></table><p>This property holds the value of the sub types of an online account.</p>
<ul>
<li><a href="index.html">OnlineAccount</a>.Unknown (default)</li>
<li><a href="index.html">OnlineAccount</a>.Sip - indicating this online account supports SIP.</li>
<li><a href="index.html">OnlineAccount</a>.SipVoip - indicating this online account supports SIP based VOIP.</li>
<li><a href="index.html">OnlineAccount</a>.Impp - indicating this online account supports IMPP.</li>
<li><a href="index.html">OnlineAccount</a>.VideoShare - indicating this online account supports VideoShare.</li>
</ul>
<!-- @@@subTypes -->
<br/>
