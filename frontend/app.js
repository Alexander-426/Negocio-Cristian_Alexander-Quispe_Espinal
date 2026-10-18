const input = document.getElementById('nombre');
const boton = document.getElementById('buscar');
const resultado = document.getElementById('resultado');
const cargando = document.getElementById('cargando');
const errorDiv = document.getElementById('error');

// Permitir buscar con la tecla "Enter"
input.addEventListener('keypress', (e) => {
  if (e.key === 'Enter') buscarPokemon();
});

boton.addEventListener('click', buscarPokemon);

async function buscarPokemon() {
  const nombre = input.value.trim().toLowerCase();
  
  if (!nombre) {
    mostrarError('Por favor, escribe el nombre de un Pokémon.');
    return;
  }

  // Limpiar pantalla y mostrar cargando
  resultado.innerHTML = '';
  errorDiv.style.display = 'none';
  cargando.style.display = 'block';

  try {
    // Petición a la API
    const response = await fetch(`https://pokeapi.co/api/v2/pokemon/${nombre}`);
    
    // Validar si el Pokémon existe (response.ok es false si es 404)
    if (!response.ok) {
      throw new Error('Pokémon no encontrado. Revisa el nombre.');
    }
    
    const data = await response.json();

    // Convertir unidades
    const pesoKg = (data.weight / 10).toFixed(1); // Hectogramos a kg
    const alturaM = (data.height / 10).toFixed(1); // Decímetros a metros

    // Generar HTML de los tipos (con sus colores)
    const tiposHTML = data.types.map(t => 
      `<span class="tipo ${t.type.name}">${t.type.name}</span>`
    ).join('');

    // Insertar la tarjeta del Pokémon en el HTML
    resultado.innerHTML = `
      <div class="card">
        <h2>${data.name}</h2>
        <img src="${data.sprites.other['official-artwork'].front_default || data.sprites.front_default}" alt="${data.name}">
        
        <div class="tipos">
          ${tiposHTML}
        </div>
        
        <div class="stats">
          <div class="stat">
            <span>Peso</span>
            <span>${pesoKg} kg</span>
          </div>
          <div class="stat">
            <span>Altura</span>
            <span>${alturaM} m</span>
          </div>
        </div>
      </div>
    `;

  } catch (error) {
    mostrarError(error.message);
  } finally {
    // Pase lo que pase, ocultar el "Cargando..."
    cargando.style.display = 'none';
  }
}

function mostrarError(mensaje) {
  errorDiv.textContent = mensaje;
  errorDiv.style.display = 'block';
}