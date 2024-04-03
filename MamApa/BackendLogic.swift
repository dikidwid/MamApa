//
//  BackendLogic.swift
//  MamApa
//
//  Created by Nadhif Rahman Alfan on 04/04/24.
//

import Foundation

struct User : Identifiable{
    let id: Int
    var name: String
    let constraints: [Constraint]
    var recentMeals: [Meal] = []
    var favoriteMeals: [Meal] = []
    var wishlistMeals: [Meal] = []
    var dislikeMeals: [Meal] = []
    
    mutating func addMealToWishlist(meal: Meal){
        self.wishlistMeals.append(meal)
    }

    mutating func addMealToRecent(meal: Meal){
        self.recentMeals.append(meal)
    }

    mutating func removeMealFromWishlist(meal: Meal){
        self.wishlistMeals.removeAll { $0.id == meal.id }
    }
    
    mutating func addMealToFavorite(meal: Meal){
        self.favoriteMeals.append(meal)
    }
    
    mutating func removeMealFromFavorite(meal: Meal){
        self.favoriteMeals.removeAll { $0.id == meal.id }
    }
    
    mutating func addMealToDislike(meal: Meal){
        self.dislikeMeals.append(meal)
    }
    
    mutating func removeMealFromDislike(meal: Meal){
        self.dislikeMeals.removeAll { $0.id == meal.id }
    }
}

struct Constraint : Identifiable{
    let id: Int
    var name: String
    var ingridients: [String]
}

struct Faker {
    
    let meals: [Meal] = [
        Meal(
            id: 1,
            name: "Nasi Goreng",
            imageName: "Nasgor",
            preparationTime: 20,
            ingredientTags: ["Nasi", "Telur", "Bawang Merah", "Bawang Putih", "Kecap Manis", "Ayam", "Wortel"],
            ingredients: [
                "200 gram nasi putih",
                "2 butir telur",
                "3 siung bawang merah",
                "2 siung bawang putih",
                "2 sendok makan kecap manis",
                "150 gram daging ayam",
                "1 buah wortel"
            ],
            steps: [
                "Tumis bawang merah dan bawang putih hingga harum.",
                "Masukkan daging ayam dan tumis hingga matang.",
                "Masukkan telur, aduk rata hingga matang.",
                "Masukkan nasi, kecap manis, dan sayuran (wortel), aduk hingga tercampur rata.",
                "Angkat dan hidangkan."
            ],
            nutritionTags: ["Protein", "Karbohidrat"],
            description: "Nasi goreng adalah hidangan nasi yang digoreng dalam minyak goreng atau margarin, biasanya ditambah dengan kecap manis, bawang merah, bawang putih, telur, dan bahan-bahan lainnya seperti daging ayam atau gorengan serta sayuran."
        ),
        
        Meal(
            id: 2,
            name: "Sate Ayam",
            imageName: "Sate Ayam",
            preparationTime: 50,
            ingredientTags: ["Ayam", "Bawang Merah", "Bawang Putih", "Kecap Manis", "Kacang Tanah", "Sereh"],
            ingredients: [
                "500 gram daging ayam, potong dadu kecil",
                "5 siung bawang merah, cincang halus",
                "5 siung bawang putih, cincang halus",
                "2 sendok makan kecap manis",
                "1 cangkir kacang tanah sangrai, haluskan",
                "2 batang sereh, bagian putih saja, cincang halus"
            ],
            steps: [
                "Siapkan daging ayam (biasanya bagian dada lebih baik), lalu potong menjadi dadu kecil sesuai selera.",
                "Cincang halus bawang merah dan bawang putih.",
                "Sangrai kacang tanah dan haluskan. Pisahkan ke dalam wadah terpisah.",
                "Cincang halus bagian putih sereh.",
                "Marinasi potongan daging ayam dengan kecap manis, bawang merah, bawang putih, dan sereh. Pastikan semua potongan ayam terbalut rata dengan bumbu. Biarkan selama minimal 1 jam untuk meresap.",
                "Setelah proses marinasi, tusukkan potongan daging ayam yang sudah ke tusuk sate satu per satu hingga habis.",
                "Siapkan panggangan atau grill, panaskan dengan api sedang.",
                "Panggang tusuk sate ayam di atas panggangan yang telah dipanaskan hingga matang dan agak garing di setiap sisinya. Pastikan untuk membaliknya secara teratur agar matang merata, sekitar 5-7 menit setiap sisinya.",
                "Sajikan sate ayam panas dengan taburan kacang tanah yang telah dihaluskan dan lontong yang sudah dipotong-potong. Anda juga dapat menambahkan sambal atau saus sate sesuai selera."
            ],
            nutritionTags: ["Protein"],
            description: "Sate ayam adalah hidangan daging ayam yang ditusuk menggunakan tusuk sate, kemudian dipanggang atau dibakar dengan menggunakan bara api, disajikan dengan bumbu kecap manis dan sambal kacang."
        ),
        
        Meal(
            id: 3,
            name: "Soto Ayam",
            imageName: "Soto",
            preparationTime: 45,
            ingredientTags: ["Ayam", "Bawang Merah", "Bawang Putih", "Jahe", "Lengkuas", "Daun Bawang", "Seledri", "Jeruk Nipis", "Telur"],
            ingredients: [
                "1 ekor ayam, potong menjadi bagian-bagian kecil sesuai selera",
                "5 siung bawang merah",
                "5 siung bawang putih, cincang halus",
                "2 ruas jahe",
                "2 ruas lengkuas",
                "3 batang daun bawang, iris halus",
                "2 batang seledri, iris halus",
                "2 buah jeruk nipis, iris tipis",
                "4 butir telur rebus, belah menjadi dua"
            ],
            steps: [
                "Potong ayam menjadi bagian-bagian kecil sesuai selera.",
                "Rebus potongan ayam dalam air mendidih hingga empuk. Tiriskan dan suwir-suwir daging ayamnya.",
                "Tumis bawang merah, bawang putih, jahe, dan lengkuas hingga harum.",
                "Tuang air secukupnya, masukkan potongan ayam yang sudah direbus. Biarkan mendidih.",
                "Tambahkan garam dan merica secukupnya. Koreksi rasa sesuai selera.",
                "Masukkan potongan telur rebus, lontong, daun bawang, dan seledri. Aduk-aduk sebentar.",
                "Sajikan soto ayam dalam mangkuk, tambahkan irisan jeruk nipis dan taburan bawang goreng di atasnya.",
                "Sajikan soto ayam panas dengan lontong dan irisan telur rebus. Anda juga dapat menambahkan sambal atau kecap manis sesuai selera."
            ],
            nutritionTags: ["Protein", "Sayuran"],
            description: "Soto ayam adalah sup khas Indonesia yang terdiri dari daging ayam, lontong, telur rebus, dan berbagai rempah-rempah seperti jahe dan lengkuas, disajikan dengan kuah kaldu ayam yang gurih dan segar."
        ),
        
        Meal(
            id: 4,
            name: "Nasi Kuning",
            imageName: "Nasi kuning",
            preparationTime: 45,
            ingredientTags: ["Beras", "Nasi", "Santan", "Kunyit", "Serai", "Daun Salam", "Bawang Merah", "Bawang Putih", "Jahe"],
            ingredients: [
                "200 gram Beras",
                "200 ml Santan",
                "2 ruas Kunyit, parut",
                "2 batang Serai",
                "2 lembar Daun Salam",
                "3 butir Bawang Merah, cincang halus",
                "2 siung Bawang Putih, cincang halus",
                "1 ruas Jahe, memarkan"
            ],
            steps: [
                "Cuci bersih beras dan tiriskan.",
                "Parut kunyit dan cincang halus bawang merah serta bawang putih.",
                "Panaskan sedikit minyak dalam panci, tumis bawang merah dan bawang putih hingga harum.",
                "Masukkan serai, daun salam, dan jahe. Tumis sampai harum.",
                "Tambahkan beras ke dalam panci, aduk-aduk hingga beras tercampur rata dengan bumbu.",
                "Tuangkan santan dan air secukupnya ke dalam panci.",
                "Masak nasi dengan api sedang hingga air meresap dan nasi matang sempurna."
            ],
            nutritionTags: ["Karbohidrat"],
            description: "Nasi kuning adalah hidangan nasi yang berasal dari Indonesia dan sering kali dihidangkan pada acara-acara spesial atau perayaan. Warna kuning pada nasi ini dihasilkan dari campuran bumbu kunyit yang memberikan aroma harum dan rasa yang khas."
        ),
        
        Meal(
            id: 5,
            name: "Bubur Ayam",
            imageName: "Bubur",
            preparationTime: 45,
            ingredientTags: ["Beras", "Nasi", "Ayam", "Bawang Merah", "Bawang Putih", "Jahe", "Daun Bawang", "Seledri", "Telur Rebus"],
            ingredients: [
                "100 gram Beras",
                "200 gram Daging Ayam, suwir-suwir",
                "3 siung Bawang Merah, cincang halus",
                "2 siung Bawang Putih, cincang halus",
                "1 ruas Jahe, cincang halus",
                "2 batang Daun Bawang, iris halus",
                "2 batang Seledri, iris halus",
                "2 butir Telur Rebus, belah menjadi dua"
            ],
            steps: [
                "Rebus beras hingga menjadi bubur.",
                "Rebus daging ayam hingga empuk, suwir-suwir.",
                "Tumis bawang merah, bawang putih, dan jahe hingga harum.",
                "Campurkan daging ayam, bumbu tumis, daun bawang, dan seledri ke dalam bubur.",
                "Hidangkan dengan telur rebus."
            ],
            nutritionTags: ["Karbohidrat"],
            description: "Bubur ayam adalah bubur nasi kental yang dimasak dengan kaldu ayam dan disajikan dengan daging ayam suwir, daun bawang, seledri, dan telur rebus."
        ),
        
        Meal(
            id: 6,
            name: "Papeda",
            imageName: "papeda",
            preparationTime: 60,
            ingredientTags: ["Sagu", "Ikan", "Air"],
            ingredients: [
                "200 gram sagu",
                "300 gram ikan (biasanya ikan tongkol atau ikan mubara)",
                "1 liter air"
            ],
            steps: [
                "Didihkan air dalam panci besar.",
                "Masukkan sagu sedikit demi sedikit sambil terus diaduk agar tidak menggumpal.",
                "Masak dengan api kecil sambil terus diaduk hingga menjadi adonan kental dan bening.",
                "Siapkan ikan, bisa dipotong-potong atau digoreng sesuai selera.",
                "Papeda siap disajikan dengan ikan sebagai pelengkap."
            ],
            nutritionTags: ["Karbohidrat", "Protein"],
            description: "Papeda adalah hidangan khas dari Maluku dan Papua yang terbuat dari sagu dan disajikan dengan ikan atau daging sebagai pelengkap. Papeda memiliki tekstur yang kenyal dan biasanya dimakan dengan menggunakan tangan."
        ),
        
        Meal(
            id: 7,
            name: "Telur Balado",
            imageName: "telor balado",
            preparationTime: 40,
            ingredientTags: ["Telur", "Bawang Merah", "Bawang Putih", "Cabe Merah", "Tomat", "Kecap Manis"],
            ingredients: [
                "6 butir telur, rebus dan kupas kulitnya",
                "5 siung bawang merah, iris tipis",
                "3 siung bawang putih, cincang halus",
                "10 buah cabe merah besar, iris serong",
                "2 buah tomat, potong dadu",
                "2 sendok makan kecap manis"
            ],
            steps: [
                "Goreng telur rebus hingga kecokelatan dan setelah itu belah menjadi dua.",
                "Tumis bawang merah dan bawang putih hingga harum.",
                "Masukkan cabe merah besar, tomat, dan kecap manis, tumis hingga matang.",
                "Tambahkan telur yang sudah digoreng tadi, aduk hingga rata dengan bumbu.",
                "Angkat dan telur balado siap disajikan."
            ],
            nutritionTags: ["Protein"],
            description: "Telur balado adalah hidangan khas Indonesia yang terdiri dari telur rebus yang digoreng dan disajikan dengan saus balado yang pedas dan sedikit manis."
        ),
        
        Meal(
            id: 8,
            name: "Nasi Liwet",
            imageName: "Liwet",
            preparationTime: 60,
            ingredientTags: ["Beras", "Ayam", "Santan", "Daun Salam", "Jahe", "Lengkuas", "Serai", "Bawang Merah", "Bawang Putih", "Kunyit", "Kacang Panjang"],
            ingredients: [
                "300 gram beras, cuci bersih",
                "400 ml santan",
                "1 ekor ayam, potong menjadi bagian-bagian kecil",
                "3 lembar daun salam",
                "1 ruas jahe, memarkan",
                "1 ruas lengkuas, memarkan",
                "2 batang serai, memarkan",
                "5 siung bawang merah, cincang halus",
                "3 siung bawang putih, cincang halus",
                "1 ruas kunyit, parut",
                "100 gram kacang panjang, potong-potong"
            ],
            steps: [
                "Rebus beras bersama santan, daun salam, jahe, lengkuas, dan serai hingga matang dan beraroma.",
                "Tumis bawang merah, bawang putih, dan kunyit hingga harum.",
                "Tambahkan potongan ayam ke dalam beras yang sudah matang, aduk rata.",
                "Tambahkan kacang panjang ke dalam nasi, aduk hingga semua bahan tercampur merata.",
                "Angkat dan hidangkan nasi liwet panas dengan lauk tambahan seperti telur dadar atau ikan asin."
            ],
            nutritionTags: ["Karbohidrat", "Protein", "Sayuran"],
            description: "Nasi Liwet adalah hidangan nasi khas Jawa yang dimasak dengan santan dan rempah-rempah seperti daun salam, jahe, lengkuas, dan serai. Biasanya disajikan dengan lauk tambahan seperti ayam atau ikan serta sayuran."
        ),
        
        Meal(
            id: 9,
            name: "Ketoprak",
            imageName: "Ketoprak",
            preparationTime: 45,
            ingredientTags: ["Tahu", "Ketupat", "Timun", "Tauge", "Bawang Goreng", "Bawang Merah", "Kecap Manis", "Gula Merah", "Asam Jawa"],
            ingredients: [
                "200 gram tahu, potong dadu",
                "2 potong ketupat, potong-potong",
                "1 buah timun, iris tipis",
                "100 gram tauge",
                "Bawang goreng secukupnya",
                "3 buah bawang merah, haluskan",
                "2 sendok makan kecap manis",
                "2 sendok makan gula merah, sisir",
                "1 sendok makan asam jawa, larutkan dengan sedikit air"
            ],
            steps: [
                "Campur tahu, ketupat, timun, tauge, dan bawang goreng dalam sebuah mangkuk.",
                "Taburkan bawang merah yang sudah dihaluskan di atasnya.",
                "Tuangkan kecap manis, gula merah, dan larutan asam jawa di atasnya.",
                "Aduk-aduk semua bahan hingga tercampur rata dan bumbu meresap.",
                "Hidangkan ketoprak dalam piring saji dan nikmati."
            ],
            nutritionTags: ["Protein", "Karbohidrat", "Sayuran"],
            description: "Ketoprak adalah hidangan khas Indonesia yang terdiri dari tahu, ketupat, timun, tauge, bawang goreng, dan bumbu kacang yang disiram dengan kecap manis dan gula merah. Hidangan ini biasanya disajikan sebagai makanan ringan atau hidangan utama."
        ),
        
        Meal(
            id: 10,
            name: "Bakso",
            imageName: "Bakso",
            preparationTime: 60,
            ingredientTags: ["Sapi", "Tepung Tapioka", "Tepung Terigu", "Telur", "Bawang Putih", "Bawang Merah", "Garam", "Merica", "Daun Bawang", "Kecap Manis"],
            ingredients: [
                "500 gram daging sapi giling",
                "100 gram tepung tapioka",
                "50 gram tepung terigu",
                "1 butir telur",
                "3 siung bawang putih, haluskan",
                "2 siung bawang merah, haluskan",
                "Garam secukupnya",
                "Merica secukupnya",
                "Daun bawang iris secukupnya untuk taburan",
                "Kecap manis secukupnya untuk penyajian"
            ],
            steps: [
                "Campurkan daging sapi giling, tepung tapioka, tepung terigu, telur, bawang putih, bawang merah, garam, dan merica dalam sebuah mangkuk besar.",
                "Uleni adonan hingga tercampur rata dan teksturnya kenyal.",
                "Rebus air dalam panci besar hingga mendidih.",
                "Bentuk adonan bakso menjadi bulatan kecil-kecil.",
                "Masukkan bulatan bakso ke dalam air mendidih dan rebus hingga bakso mengapung dan matang, sekitar 5-7 menit.",
                "Angkat bakso dan tiriskan.",
                "Sajikan bakso dalam mangkuk, taburi dengan daun bawang iris, dan beri sedikit kecap manis untuk penyajian."
            ],
            nutritionTags: ["Protein"],
            description: "Bakso adalah bola daging yang terbuat dari campuran daging sapi giling, tepung tapioka, dan bumbu-bumbu lainnya. Bakso biasanya disajikan dalam kuah panas atau ditusuk-tusuk seperti sate, dan sering dimakan dengan mie atau nasi."
        )
    ]
    
    static let constraints = [
        Constraint(
            id: 1,
            name: "Daging",
            ingridients: ["Ayam", "Sapi", "Ikan"]),
        Constraint(
            id: 2,
            name: "Non-Halal",
            ingridients: ["Pig"]),
        Constraint(
            id: 3,
            name: "Tepung",
            ingridients: ["Tepung Terigu", "Tepung Tapioka"]),
        Constraint(
            id: 4,
            name: "Susu",
            ingridients: ["Susu", "Keju"]),
        Constraint(
            id: 5,
            name: "Kacang",
            ingridients: ["Kacang"]),
        Constraint(
            id: 6,
            name: "Hidangan Laut",
            ingridients: ["Ikan", "Udang", "Kepiting"]),
        Constraint(
            id: 7,
            name: "Sapi",
            ingridients: ["Sapi"]),
        Constraint(
            id: 8,
            name: "Telur",
            ingridients: ["Telur"]),
    ]
    
    let users = [
        User(id: 1, name: "Taylor", constraints: [constraints[0]]), //Daging
        User(id: 2, name: "John", constraints: [constraints[1]]), //Non-Halal
        User(id: 3, name: "Alex", constraints: [constraints[2]]), //Tepung
        User(id: 4, name: "Michael", constraints: [constraints[3]]), //Susu
        User(id: 5, name: "David", constraints: [constraints[4]]), //Kacang
        User(id: 6, name: "Chris", constraints: [constraints[5]]), //Hidangan Laut
        User(id: 7, name: "Daniel", constraints: [constraints[6]]), //Sapi
        User(id: 8, name: "Matthew", constraints: [constraints[7]]) //Telur
    ]

}

func filterMealsIngridients(ingridients: [String], meals: [Meal]) -> [Meal] {
    let ingridients = Set(ingridients)
    return meals.filter { meal in
        let mealIngredients = Set(meal.ingredientTags)
        return !mealIngredients.isDisjoint(with: ingridients)
    }
}

func filterMealsConstraints(user: User, meals: [Meal]) -> [Meal] {
    let constraintIngredients = Set(user.constraints.flatMap { $0.ingridients })
    let filteredMeals = meals.filter { meal in
        let mealIngredients = Set(meal.ingredientTags)
        return mealIngredients.isDisjoint(with: constraintIngredients)
    }
    return filteredMeals
}

func filterMealsTime(maxPreparationTime: Int, meals: [Meal]) -> [Meal] {
    return meals.filter { $0.preparationTime <= maxPreparationTime }
}

func filterMealsWishlist(user: User, meals: [Meal]) -> [Meal] {
    let wishlistMealIDs = Set(user.wishlistMeals.map { $0.id })
    return meals.filter { !wishlistMealIDs.contains($0.id) }
}

func filterMealsRecent(user: User, meals: [Meal]) -> [Meal] {
    let constraintIngredients = Set(user.constraints.flatMap { $0.ingridients })
    let recentMealIDs = Set(user.recentMeals.map { $0.id })
    let filteredMeals = meals.filter { meal in
        let mealIngredients = Set(meal.ingredientTags)
        return !recentMealIDs.contains(meal.id) && mealIngredients.isDisjoint(with: constraintIngredients)
    }
    return filteredMeals
}

func filterMealsFavorite(user: User, meals: [Meal]) -> [Meal] {
    let favoriteMealIDs = Set(user.favoriteMeals.map { $0.id })
    return meals.filter { !favoriteMealIDs.contains($0.id) }
}

func filterMealsDislike(user: User, meals: [Meal]) -> [Meal] {
    let dislikeMealIDs = Set(user.dislikeMeals.map { $0.id })
    return meals.filter { !dislikeMealIDs.contains($0.id) }
}

//TEST CASE
func testCase(data: Faker){
    let userTaylor = data.users[0]
    let userJohn = data.users[1]
    let userAlex = data.users[2]
    let meals = data.meals
    
    //TC-1: Normal condition (No filter but exclude constraints)
    let filteredMeals = filterMealsConstraints(user: userTaylor, meals: meals)
    print("TC-1: No filter but exclude constraints (User: \(userTaylor.name))")
    print(filteredMeals.map { $0.name })

    //TC-2: Filter by ingridients and exclude constraints
    let ingridients = ["Telur"]
    let filteredMealsContraints = filterMealsConstraints(user: userTaylor, meals: meals)
    let filteredMeals2 = filterMealsIngridients(ingridients: ingridients, meals: filteredMealsContraints)
    print("TC-2: Filter by ingridients and exclude constraints (User: \(userTaylor.name))")
    print(filteredMeals2.map { $0.name })
}
