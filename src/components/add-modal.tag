<add-modal id="add-modal" class="ui modal">
  <table class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
    <tbody>
      <tr onclick={ openCreateModal }>
        <td class="mdl-data-table__cell--non-numeric">Manueller Wecker</td>
      </tr>
      <tr onclick={ openLSFModal }>
        <td class="mdl-data-table__cell--non-numeric">LSF-Wecker</td>
      </tr>
    </tbody>
  </table>

  <style scoped>
    table {
      width: 100%;
    }

    td.mdl-data-table__cell--non-numeric.mdl-data-table__cell--non-numeric {
      text-align: center;
      font-size: 2.2em;
      padding: 3% 0px;
    }
  </style>

  <script>
    this.openLSFModal = () => $('#create-lsf-modal').modal('show');
    this.openCreateModal = () => $('#create-manual-modal').modal('show');
  </script>
</add-modal>
