// Copyright 2020 Roger Peralta Aranibar
#ifndef SOURCE_SMART_POINTER_SMART_POINTER_HPP_
#define SOURCE_SMART_POINTER_SMART_POINTER_HPP_
#include <cstddef>

/*
 * Smart Pointer que implementa un tipo de estrategia por conteo de referencias.
 * Permite que varios SmartPointers puedan acceder al mismo recurso compartido.
 * Cuando el ˙ltimo puntero es eliminado, se elimina y libera el recurso.
 */

template <typename Type>
class SmartPointer {
 private:
    Type *resource_;
 public:
    int *counter;

 public:
  /* Constructor: SmartPointer(Type* resource=NULL)
   * Uso: SmartPointer<string> myPtr(new string);
   *      SmartPointer<string> myPtr;
   * ------------------------------------------------------------
   * Construye un nuevo objeto SmartPointer que administra el recurso
   * asignado. Se asume que el recurso viene de una llamada a new.
   * El recurso también podría ser NULL lo que ocasionaría que el
   * recurso no administre ningún recurso.
   */

  //SmartPointer() :resource_(nullptr), counter(nullptr) {}

/*
  explicit SmartPointer(Type *resource=nullptr) :resource_(resource), counter(nullptr) {
      if(resource){
          counter = new int(1);
      }
  }*/

explicit SmartPointer(Type *resource=nullptr) {
      if(this->counter != nullptr){
          if( *this->counter ==1 ){
            //(*this->counter)--; 
            delete resource;
         }
      }
      
      resource_ = resource;
      counter = nullptr;
      if(resource){
          counter = new int(1);
      }
  }
  /* Destructor: ~SmartPointer();
   * Uso: (implícito)
   * ------------------------------------------------------------
   * Decrementa el contador de referencias del recurso, eliminando
   * y liberando la memoria si fuera el último SmartPointer apuntando
   * al recurso.
   */
  ~SmartPointer() {///regla 3
    if( (*counter)>1 ){
        (*counter)--;
        return;
    }
    else if( (*counter)== 1 ){
        delete counter;
        delete resource_;
    }

  }

  /* SmartPointer operadores de "des-referencia"(dereference)
   * Uso: cout << *myPtr << endl;
   * Uso: cout << myPtr->length << endl;
   * ------------------------------------------------------------
   * Permite al SmartPointer comportarse como si fuera un puntero.
   */
  Type &operator*() const { return *resource_; }
  Type *operator->() const { return resource_; }

  /* Funciones de copia
   * Uso: SmartPointer<string> ptr=existingPointer;
   *      ptr=existingPtr;
   * ------------------------------------------------------------
   * Cambia el recurso referenciado por este SmartPointer por otro
   * SmartPointer. Si el conteo llega a cero, debe ser eliminado
   * (deallocated).
   */
  SmartPointer &operator=( const SmartPointer &other) {///regla 3
    if( *this->counter >= 2){
        (*this->counter)--; 
    }
    else if ( *this->counter == 1){
        delete this->resource_;
    }
    this->counter = other.counter;
    this->resource_ = other.resource_;
    (*this->counter)++; 
    return *this;
  }

  SmartPointer &operator=(Type *other) {
     
      if((*this->counter) == 1){
            delete counter ;
            delete resource_ ;
        } 

      if(other == nullptr)
        delete resource_;

      if(this->resource_ != nullptr){
         (*this->counter)--; 
         this->resource_ = nullptr ; 
      }
      

      /*
    Type *return_ = new Type;
    *return_ = *other;
    *this->resource_ = *return_;
    //cout << "this-> "<<resource_ << endl;
    */
    return *this;
  }


  SmartPointer( const SmartPointer &other )  :resource_(other.resource_), counter(other.counter) {/// regla 3
    //this->resource_ = other.resource_; 
    //this->counter = other.counter;
      if( (*this->counter) > 0 ){
          (*this->counter)++;
      }
      
  }
  /* Helper Function: Obtener recurso.
   * Uso: Type* p=GetPointer();
   * ------------------------------------------------------------
   * Retorna una variable puntero al recurso administrado.
   */
  Type *GetPointer() const { return resource_; }

  /* Helper Function: Obtiene conteo
   * Uso: if (ptr.GetReferenceCount()==1) // Única referencia
   * ------------------------------------------------------------
   * Retorna el número de referencias apuntando al recurso.
   */
  size_t GetReferenceCount() const { return *counter; }

  /* Helper Function: se des-asocia del recurso;
   * Uso: ptr.Detach();
   * ------------------------------------------------------------
   * Deja de administrar un recurso. eliminando y liberando la
   * memoria si es necesario.
   */
  void Detach() { 
    if( (*this->counter) == 1){
        *counter = 0;
        delete resource_;
        delete counter;
    }
    else if( *this->counter >= 2){
        (*this->counter)--;
        Type *return_ = new Type;
        this->resource_ = return_;

    }

  }

};


#endif  // SOURCE_SMART_POINTER_SMART_POINTER_HPP_
