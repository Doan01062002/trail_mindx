const products = [
  { id: 1, name: "Áo Hoodie Cá Tính", price: 250000, image: "https://picsum.photos/200?1" },
  { id: 2, name: "Giày Sneaker", price: 550000, image: "https://picsum.photos/200?2" },
  { id: 3, name: "Balo Street Style", price: 320000, image: "https://picsum.photos/200?3" },
  { id: 4, name: "Tai Nghe Bluetooth", price: 180000, image: "https://picsum.photos/200?4" },
];

let cart = [];

function renderProducts() {
  const list = document.getElementById('product-list');
  list.innerHTML = '';
  products.forEach(product => {
    const div = document.createElement('div');
    div.className = 'product';
    div.innerHTML = `
      <img src="${product.image}" alt="${product.name}">
      <h3>${product.name}</h3>
      <p>${product.price.toLocaleString()}đ</p>
      <button onclick="addToCart(${product.id})">Thêm vào giỏ</button>
    `;
    list.appendChild(div);
  });
}

function addToCart(id) {
  const item = products.find(p => p.id === id);
  cart.push(item);
  document.getElementById('cart-count').innerText = cart.length;
}

function openCart() {
  const modal = document.getElementById('cart-modal');
  const list = document.getElementById('cart-items');
  list.innerHTML = cart.map(item => `<li>${item.name} - ${item.price.toLocaleString()}đ</li>`).join('');
  modal.style.display = 'flex';
}

function closeCart() {
  document.getElementById('cart-modal').style.display = 'none';
}

document.getElementById('cart-btn').addEventListener('click', openCart);

renderProducts();
