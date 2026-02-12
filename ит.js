const users = [
  { id: 1, name: "Anna", age: 22, city: "Moscow", isActive: true },
  { id: 2, name: "Oleg", age: 17, city: "Kazan", isActive: false },
  { id: 3, name: "Ivan", age: 30, city: "Moscow", isActive: true },
  { id: 4, name: "Maria", age: 25, city: "Sochi", isActive: false }
];

// 1. Только активные
const getActiveUsers = users => users.filter(u => u.isActive);

// 2. Только имена
const getUserNames = users => users.map(u => u.name);

// 3. Поиск по id
const findUserById = (users, id) => users.find(u => u.id === id) || null;

// 4. Статистика
const getUsersStatistics = users => {
  const total = users.length;
  const active = users.filter(u => u.isActive).length;
  return { total, active, inactive: total - active };
};

// 5. Средний возраст
const getAverageAge = users => users.length
  ? users.reduce((sum, u) => sum + u.age, 0) / users.length
  : 0;

// 6. Группировка по городам
const groupUsersByCity = users => users.reduce((acc, u) => {
  (acc[u.city] = acc[u.city] || []).push(u);
  return acc;
}, {});

// Вызовы
console.log('Активные пользователи:', getActiveUsers(users));
console.log('Имена:', getUserNames(users));
console.log('Пользователь с id=2:', findUserById(users, 2));
console.log('Статистика:', getUsersStatistics(users));
console.log('Средний возраст:', getAverageAge(users));
console.log('Группировка по городам:', groupUsersByCity(users));