const input = document.getElementById('nombre');
const boton = document.getElementById('buscar');
const resultado = document.getElementById('resultado');
const cargando = document.getElementById('cargando');
const errorDiv = document.getElementById('error');

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

  resultado.innerHTML = '';
  errorDiv.style.display = 'none';
  cargando.style.display = 'block';

  try {
    const response = await fetch(`https://pokeapi.co/api/v2/pokemon/${nombre}`);
    
    if (!response.ok) {
      throw new Error('Pokémon no encontrado. Revisa el nombre.');
    }
    
    const data = await response.json();

    const pesoKg = (data.weight / 10).toFixed(1); // Hectogramos a kg
    const alturaM = (data.height / 10).toFixed(1); // Decímetros a metros

    const tiposHTML = data.types.map(t => 
      `<span class="tipo ${t.type.name}">${t.type.name}</span>`
    ).join('');

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
    cargando.style.display = 'none';
  }
}

function mostrarError(mensaje) {
  errorDiv.textContent = mensaje;
  errorDiv.style.display = 'block';
}