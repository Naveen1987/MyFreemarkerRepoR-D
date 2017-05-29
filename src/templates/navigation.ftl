<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone")>

<div aria-expanded="false" class="collapse navbar-collapse" id="navigationCollapse">
<center>
  <section class="navigation">
  <div class="nav-container">

    <nav>

      <ul class="nav-list">
        <li>
          <a href="/group/internal-intranet/welcome">Welcome</a>
        </li>
       <!--This Unità Operative -->
        <li>
          <a style="cursor:pointer;">Unità Operative</a>
          <ul class="nav-dropdown">
           <li><a  href="#">Farmacia OspedalieraIs</a></li>
      <li><a  href="#">Staff Sistemi Informativi</a></li>
      <li><a  href="#">Sviluppo e Formazione</a></li>
	  <li><a  href="#">Controllo di Gestione</a></li>
      <li><a  href="#">Ufficio Relazioni con il pubblico</a></li>
      <li><a  href="#">Servizio Risorse Umane</a></li>
	  <li><a  href="#">Ufficio Valutazione</a></li>
      <li><a  href="#">Flussi Informativi Sanitari</a></li>
      <li><a  href="#">Laboratorio Analisi Magenta</a></li>
	  <li><a  href="#">Servizio Acquisti e Appalti</a></li>
      <li><a  href="#">Servizio Dietietico</a></li>
      <li><a  href="#">Affari Generali e Legali</a></li>
	  <li><a  href="#">Comitato Scientifico</a></li>
          </ul>
        </li>
        <!--This is Procedure AO-->
        <li>
          <a style="cursor:pointer;">Procedure AO</a>
          <ul class="nav-dropdown">
           <li><a  href="#">Ufficio Qualità e Accreditamento</a></li>
      <li><a  href="#">Farmacia</a></li>
      <li><a  href="#">SIECIO/CIO</a></li>
	  <li><a  href="#">SPP/MC</a></li>
	  <li><a  href="#">Direzioni Mediche</a></li>
	  <li><a  href="#">SITRA</a></li>
	  <li><a  href="#">Comitati/Gruppi di Miglioramento</a></li>
	  <li><a  href="#">Accrediatmento e Controlli</a></li>
	  <li><a  href="#">Cartella Clinica</a></li>
          </ul>
        </li>
<#list nav_items as nav_item>
<li>
	<#if nav_item.hasChildren()>
	<a href="${nav_item.getURL()}">${nav_item.getName()}</a>
	<ul class="nav-dropdown">
	<#list nav_item.getChildren() as item>
	<li><a href="${item.getURL()}">${item.getName()}</a></li>
	</#list>
	</ul>
	<#else>
	<li><a href="${nav_item.getURL()}">${nav_item.getName()}</a></li>
	</#if>
</li>
</#list>
</ul>
</nav>
</div>
</section>
</center>
</div>

<#assign VOID = freeMarkerPortletPreferences.reset()>
