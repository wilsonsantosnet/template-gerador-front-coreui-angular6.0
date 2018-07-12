<section class="container-fluid">
  <section class="card">
    <header class="card-header">
      <div class="row align-items-center">
        <div class="col">
          <span class="fa fa-angle-double-right" aria-hidden="true"></span> {{ vm.actionTitle }}<br>
          <small class="text-muted">{{ vm.actionDescription }}</small>
        </div>
      </div>
    </header>
    <article class="card-body">
      <form (ngSubmit)="onSave(vm.model)" novalidate>
        <app-<#classNameLowerAndSeparator#>-container-edit [(vm)]="vm" *ngIf="_showContainerEdit"></app-<#classNameLowerAndSeparator#>-container-edit>
      </form>
    </article>
    <footer class="card-footer  d-flex justify-content-end">
      <button class="btn btn-default" type="button" (click)="onCancel()">
        <i class="icon-close icons"></i>
        {{vm.generalInfo.cancelar.label}}
      </button>
      <button type="submit" class="btn btn-success " [disabled]="vm != null && vm.form.invalid">
        <i class="icon-check icons"></i>
        {{vm.generalInfo.salvar.label}}
      </button>
    </footer>
  </section>
</section>

