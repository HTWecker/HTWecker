import '../components/header.tag';
import '../components/content.tag';
import '../components/add.tag';
import '../components/add-modal.tag';
import "../components/creator.tag";

import '../semantic/dist/semantic.css';

<home class="mdl-layout">
  <header></header>

  <content></content>

  <add-modal></add-modal>
  <creator id="create-manual-modal" class="ui modal" type="manual"></creator>
  <creator id="create-lsf-modal" class="ui modal" type="lsf"></creator>
  <add></add>
</home>