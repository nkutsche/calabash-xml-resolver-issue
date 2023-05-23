<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc"
    xmlns:d2t="http://www.data2type.de"
    xmlns:c="http://www.w3.org/ns/xproc-step" version="1.0">
    
    <p:import href="http://www.data2type.de/xpl/module.xpl"/>
    
    <p:identity>
        <p:input port="source">
            <p:inline>
                <dummy/>
            </p:inline>
        </p:input>
    </p:identity>
    
    <d2t:module/>
    
    <p:store href="out.xml"/>
    
</p:declare-step>