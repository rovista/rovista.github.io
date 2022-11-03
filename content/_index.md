+++
title = "Home"
menu = "main"
weight = 1
date = "2018-05-16"
+++

<script>var clicky_site_ids = clicky_site_ids || []; clicky_site_ids.push(101238267);</script>
<script async src="//static.getclicky.com/js"></script>
<noscript><p><img alt="Clicky" width="1" height="1" src="//in.getclicky.com/101238267ns.gif" /></p></noscript>

<div class="jumbotron">
      <div class="container">
        
          <h2 align='right'><br>A Longitudinal and Comprehensive Study of the DANE Ecosystem in Email</h2>
        <h3 align='right'>
            <a href="https://mmlab.snu.ac.kr/~hmlee/">Hyeonmin Lee<sup>†</sup></a>,
            <a href="https://anikethgireesh.me/">Aniketh Girish<sup>*</sup></a>,
            <a href="https://wwwhome.ewi.utwente.nl/~rijswijkrm/">Roland van Rijswijk-Deij<sup>‡</sup></a>,<br>
            <a href="https://mmlab.snu.ac.kr/~tk/">Taekyoung "Ted" Kwon<sup>†</sup></a>,
            <a href="https://taejoong.github.io">Taejoong "Tijay" Chung<sup>§</sup></a>,
        </h3>
        <h5 align='right'>
            <sup>†</sup>Seoul National University,
            <sup>*</sup>Amrita Vishwa Vidyapeetham,<br>
            <sup>‡</sup>NLNetLabs and University of Twente,
            <sup>§</sup>Virginia Tech 
        </h5>
      </div>
    </div>

# About This Study

The DNS-based Authentication of Named Entities (DANE) standard allows clients and servers to establish a TLS connection without relying on trusted third parties like CAs by publishing Transport Layer Security Authentication (TLSA) records. DANE uses the Domain Name System’s Security Extensions (DNSSEC) PKI to achieve the integrity and authenticity. However, DANE can only work correctly if each of the principals in its PKI properly performs its duty: through their DNSSEC-aware DNS servers, DANE servers (e.g., SMTP servers) must publish their TLSA records, which are consistent with their certificates. Similarly, DANE clients (e.g., SMTP clients) must verify the DANE servers’ TLSA records, which are also used to validate the fetched certificates.
This paper performs a large-scale, longitudinal, and comprehensive measurement study on how well the DANE standard and its relevant protocols are deployed and managed. We collect the dataset from all the second-level domains under .com, .org, .net, .nl, and .se TLDs over a period of 24 months to analyze the server-side deployment and management. For the client-side deployment and management analysis, we investigated 30 popular email service providers, and four popular MTA and 10 DNS software programs.
Our study reveals the prevalent mismanagement in the DANE ecosystem. For instance, we found that 36% of TLSA records cannot be validated due to missing or incorrect DNSSEC records, and 14.17% of them are inconsistent with their certificates. We also found that only four email service providers support DANE for both outgoing and incoming emails, but two of them have drawbacks of not checking Certificate Usage in TLSA records. On the bright side, the administrators of email servers can leverage open source MTA and DNS programs to support DANE correctly.

# About the Artifacts
The artifacts are largely composed of the two parts: 

* Server-side artifacts, which focus on (1) how we collect the data (i.e., measurement codes), (2) how we analyze the collected data (i.e., analysis codes) --- Section 4 and 5 in the paper.

* Client-side artifacts, which focus on (1) how we infer the mail server provider's DANE policy. --- Section 6 in the paper.

<b><center> This paper will be published at USENIX Security'20 and has passed the artifact evaluation process.</b></center>
<b><center> The paper has been updated and is available <a href="https://taejoong.github.io/pubs/publications/lee-2020-dane.pdf">here</a></b></center>
 
# About Criticism
After the paper was published, we have received many feedback from the DANE community; especially, the two authors of RFC7671, Viktor Dukhovni and Wes Hardaker, helped us a lot improve the quality of the paper. Our response is available <a href="https://dane-study.github.io/criticism/">here</a>.

<div><center><img src="figure/usenix_artifact_evaluation_passed_new.png"></div></center>
