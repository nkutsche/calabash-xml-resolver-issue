<?xml version="1.0" encoding="UTF-8"?>
<p:library xmlns:p="http://www.w3.org/ns/xproc"
    xmlns:d2t="http://www.data2type.de"
    xmlns:cx="http://xmlcalabash.com/ns/extensions"
    xmlns:c="http://www.w3.org/ns/xproc-step" version="1.0">
    <p:import href="http://xmlcalabash.com/extension/steps/library-1.0.xpl"/>
    
    <p:declare-step type="d2t:module">
        <p:input primary="true" port="source"/>
        <p:output primary="true" port="result"/>
        <cx:message>
            <p:with-option name="message" select="'static-base-uri: ' || static-base-uri()"/>
        </cx:message>
        <cx:message>
            <p:with-option name="message" select="'unparsed-text-available: ' || unparsed-text-available('../txt/unparsed-text.txt')"/>
        </cx:message>
    </p:declare-step>
</p:library>