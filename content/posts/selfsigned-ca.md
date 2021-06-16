+++
title = "Self-signed CA(Certificate Authority)"
date = 2021-06-16T10:56:00+08:00
lastmod = 2021-06-16T11:41:19+08:00
draft = false
+++

## Install the OpenSSL {#install-the-openssl}

OpenSSL is a built-in package on macOS, while on Linux distributions, you need
to install it manually. Like Ubuntu,

```sh
apt install openssl
```


## Use openssl x509 to sign the CA {#use-openssl-x509-to-sign-the-ca}

1.  Generate a new private key and Certificate Signing Request

    ```sh
    mkdir cert && cd cert
    openssl genrsa -out ca.key 2048
    openssl req -new -sha256 -key ca.key -out ca.csr
    ```

2.  Generate a self-signed certificate

    ```sh
    openssl x509 -req -sha256 -days 3650 -in ca.csr -signkey ca.key -out ca.crt
    ```

3.  Convert a certificate file and a private key to PKCS#12 (.p12)

    ```sh
    openssl pkcs12 -export -clcerts -in ca.crt -inkey ca.key -out ca.p12 -password pass:<password>
    ```

4.  Encode PKCS#12 as Base64

    ```sh
    base64 -w 0 ca.p12
    ```


## Use openssl ca to sign the CA {#use-openssl-ca-to-sign-the-ca}

TODO: placeholder


## Reference {#reference}

-   <https://blog.hly0928.com/post/generate-ca-root-cert-for-surge/>
-   <https://www.sslshopper.com/article-most-common-openssl-commands.html>
