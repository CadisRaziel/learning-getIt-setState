//<V> -> é um generic poderia ser <T>

//aqui criamos nosso contrato do MVP
abstract class FwcPresenter<V> {
  set view(V view);
}
