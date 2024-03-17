<letter>
<div style="display: flex; justify-content: center; align-items: center; text-align: center; padding-bottom: 30px;">
    <img src="./letters/letter/gpd.png" alt="College Logo" width="100" height="100" style="margin-right: 50px;">
    <h1 id="TITLE" style="margin-top: 10px; font-size: 30px;">शासकीय तंत्रनिकेतन, धाराशिव</h1>
</div>
<address>
  <to  >
      <date>दिनांक: <?= $rdate ?></date>
      प्रति,<br>
      मुख्याध्यापक महोदय/महोदया,<br>
      <?= $placeholders['address'] ?>
    </to>
  </address>
  <main>
   <b> <subject>विषय : <?=  $placeholders['subject'] ?></subject></b>
    <text  >
      <?php echo html_entity_decode($placeholders['text']) ?>
      
    </text>
    <signature>
      <closing  ><?= $closing ?></closing>
      <name  ><?= $name ?>,<br></name>
      <role> <?= $role ?></role>
      <department><?= $department ?> <br> </department>
      <collagename><?= $collagename ?>  </collagename>
    </signature>
  </main>
</letter>