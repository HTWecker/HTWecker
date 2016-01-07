import "../components/header.tag";
import "../components/alarm-list.tag";
import '../components/add.tag';
import '../components/add-modal.tag';

<overview class="ui container">
  <header></header>

  <alarm-list></alarm-list>

  <add></add>
  <add-modal></add-modal>
  <creator id="create-manual-modal" class="ui modal" type="manual"></creator>
  <creator id="create-lsf-modal" class="ui modal" type="lsf"></creator>
</overview>