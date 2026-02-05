<mxfile host="app.diagrams.net" version="29.3.0">
  <diagram name="Online Examination System HLD" id="OES-HLD-01">
    <mxGraphModel dx="1400" dy="900" grid="1" gridSize="10" page="1" pageWidth="827" pageHeight="1169">
      <root>
        <mxCell id="0"/>
        <mxCell id="1" parent="0"/>

        <mxCell id="t1" value="&lt;b&gt;HIGH LEVEL DESIGN&lt;/b&gt;" style="text;html=1;strokeColor=none;fillColor=none;align=center;verticalAlign=middle;" vertex="1" parent="1">
          <mxGeometry x="300" y="10" width="250" height="30" as="geometry"/>
        </mxCell>

        <mxCell id="u1" style="shape=mxgraph.alibaba_cloud.user;fillColor=#FF6A00;strokeColor=none;" vertex="1" parent="1">
          <mxGeometry x="60" y="200" width="60" height="60" as="geometry"/>
        </mxCell>

        <mxCell id="lb1" style="shape=mxgraph.aws3.application_load_balancer;fillColor=#F58536;strokeColor=none;direction=north;" vertex="1" parent="1">
          <mxGeometry x="200" y="195" width="80" height="80" as="geometry"/>
        </mxCell>

        <mxCell id="srv1" style="image;image=img/lib/clip_art/computers/Server_128x128.png;html=1;" vertex="1" parent="1">
          <mxGeometry x="330" y="120" width="70" height="80" as="geometry"/>
        </mxCell>

        <mxCell id="srv2" style="image;image=img/lib/clip_art/computers/Server_128x128.png;html=1;" vertex="1" parent="1">
          <mxGeometry x="330" y="220" width="70" height="80" as="geometry"/>
        </mxCell>

        <mxCell id="srv3" style="image;image=img/lib/clip_art/computers/Server_128x128.png;html=1;" vertex="1" parent="1">
          <mxGeometry x="330" y="320" width="70" height="80" as="geometry"/>
        </mxCell>

        <mxCell id="cache" style="image;image=img/lib/mscae/Cache_Redis_Product.svg;html=1;" vertex="1" parent="1">
          <mxGeometry x="470" y="90" width="60" height="45" as="geometry"/>
        </mxCell>

        <mxCell id="db1" style="image;image=img/lib/clip_art/computers/Database_128x128.png;html=1;" vertex="1" parent="1">
          <mxGeometry x="560" y="200" width="80" height="80" as="geometry"/>
        </mxCell>

        <mxCell id="e1" style="endArrow=classic;" edge="1" parent="1" source="u1" target="lb1">
          <mxGeometry relative="1" as="geometry"/>
        </mxCell>

        <mxCell id="e2" style="endArrow=classic;" edge="1" parent="1" source="lb1" target="srv1">
          <mxGeometry relative="1" as="geometry"/>
        </mxCell>

        <mxCell id="e3" style="endArrow=classic;" edge="1" parent="1" source="lb1" target="srv2">
          <mxGeometry relative="1" as="geometry"/>
        </mxCell>

        <mxCell id="e4" style="endArrow=classic;" edge="1" parent="1" source="lb1" target="srv3">
          <mxGeometry relative="1" as="geometry"/>
        </mxCell>

        <mxCell id="e5" style="endArrow=classic;" edge="1" parent="1" source="srv1" target="db1">
          <mxGeometry relative="1" as="geometry"/>
        </mxCell>

        <mxCell id="e6" style="endArrow=classic;" edge="1" parent="1" source="srv2" target="db1">
          <mxGeometry relative="1" as="geometry"/>
        </mxCell>

        <mxCell id="e7" style="endArrow=classic;" edge="1" parent="1" source="srv3" target="db1">
          <mxGeometry relative="1" as="geometry"/>
        </mxCell>

        <mxCell id="t2" value="USER" style="text;html=1;strokeColor=none;fillColor=none;align=center;" vertex="1" parent="1">
          <mxGeometry x="60" y="270" width="60" height="30" as="geometry"/>
        </mxCell>

        <mxCell id="t3" value="LOAD BALANCER" style="text;html=1;strokeColor=none;fillColor=none;align=center;" vertex="1" parent="1">
          <mxGeometry x="200" y="280" width="100" height="30" as="geometry"/>
        </mxCell>

        <mxCell id="t4" value="APPLICATION SERVERS" style="text;html=1;strokeColor=none;fillColor=none;align=center;" vertex="1" parent="1">
          <mxGeometry x="310" y="420" width="160" height="30" as="geometry"/>
        </mxCell>

        <mxCell id="t5" value="CACHE" style="text;html=1;strokeColor=none;fillColor=none;align=center;" vertex="1" parent="1">
          <mxGeometry x="470" y="60" width="80" height="20" as="geometry"/>
        </mxCell>

        <mxCell id="t6" value="DATABASE" style="text;html=1;strokeColor=none;fillColor=none;align=center;" vertex="1" parent="1">
          <mxGeometry x="560" y="290" width="80" height="20" as="geometry"/>
        </mxCell>

        <mxCell id="t7" value="&lt;b&gt;LOW LEVEL DESIGN&lt;/b&gt;" style="text;html=1;strokeColor=none;fillColor=none;align=center;" vertex="1" parent="1">
          <mxGeometry x="260" y="470" width="250" height="30" as="geometry"/>
        </mxCell>

        <mxCell id="cls1" value="+ ExamController" style="swimlane;fontStyle=1;childLayout=stackLayout;startSize=26;html=1;" vertex="1" parent="1">
          <mxGeometry x="60" y="520" width="220" height="140" as="geometry"/>
        </mxCell>

        <mxCell id="cls1a" value="- examService" style="text;html=1;strokeColor=none;fillColor=none;align=left;" vertex="1" parent="cls1">
          <mxGeometry y="26" width="220" height="40" as="geometry"/>
        </mxCell>

        <mxCell id="cls1b" value="+ startExam()&#10;+ submitExam()" style="text;html=1;strokeColor=none;fillColor=none;align=left;" vertex="1" parent="cls1">
          <mxGeometry y="70" width="220" height="60" as="geometry"/>
        </mxCell>

        <mxCell id="cls2" value="+ EvaluationService" style="swimlane;fontStyle=1;childLayout=stackLayout;startSize=26;html=1;" vertex="1" parent="1">
          <mxGeometry x="320" y="520" width="240" height="140" as="geometry"/>
        </mxCell>

        <mxCell id="cls2a" value="+ evaluate()" style="text;html=1;strokeColor=none;fillColor=none;align=left;" vertex="1" parent="cls2">
          <mxGeometry y="26" width="240" height="40" as="geometry"/>
        </mxCell>

        <mxCell id="cls3" value="+ ResultService" style="swimlane;fontStyle=1;childLayout=stackLayout;startSize=26;html=1;" vertex="1" parent="1">
          <mxGeometry x="620" y="520" width="240" height="140" as="geometry"/>
        </mxCell>

        <mxCell id="cls3a" value="+ generateResult()" style="text;html=1;strokeColor=none;fillColor=none;align=left;" vertex="1" parent="cls3">
          <mxGeometry y="26" width="240" height="40" as="geometry"/>
        </mxCell>

      </root>
    </mxGraphModel>
  </diagram>
</mxfile>
