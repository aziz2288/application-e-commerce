-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 28 mars 2024 à 01:15
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Ut Ducimus', 'ut-ducimus', '2.jpg', '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(2, 'Nemo Aliquam', 'nemo-aliquam', '4.jpg', '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(3, 'Voluptatem Deleniti', 'voluptatem-deleniti', '3.jpg', '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(4, 'Est Velit', 'est-velit', '1.jpg', '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(5, 'Ullam Aliquam', 'ullam-aliquam', '1.jpg', '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(6, 'Sit Qui', 'sit-qui', '5.jpg', '2024-03-21 23:55:29', '2024-03-21 23:55:29');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Error Voluptates', 'error-voluptates', '1.jpg', '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(2, 'Pariatur Quibusdam', 'pariatur-quibusdam', '3.jpg', '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(3, 'Error Earum', 'error-earum', '4.jpg', '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(4, 'Cum Dolorem', 'cum-dolorem', '5.jpg', '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(5, 'Provident Perspiciatis', 'provident-perspiciatis', '4.jpg', '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(6, 'Unde Sed', 'unde-sed', '5.jpg', '2024-03-21 23:55:29', '2024-03-21 23:55:29');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2019_08_19_000000_create_failed_jobs_table', 1),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(14, '2024_03_21_221601_create_brands_table', 1),
(15, '2024_03_21_221648_create_categories_table', 1),
(16, '2024_03_21_221657_create_products_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `short_description` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) NOT NULL,
  `SKU` varchar(191) NOT NULL,
  `stock_status` enum('instock','outofstock') NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `image` varchar(191) NOT NULL,
  `images` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'Natus Vero', 'natus-vero', 'Fugit itaque aut quam id sapiente id ad.', 'Assumenda delectus voluptatem magnam iusto voluptas. Quos voluptatibus omnis aut voluptas illum sed praesentium nulla. Similique nobis suscipit impedit voluptatem dolor ipsum. Est aut deserunt inventore sint rerum. Reiciendis et explicabo et et sunt debitis in. Autem eum facilis illo sit culpa. Error molestias commodi sint voluptates architecto aperiam eum. Reprehenderit amet minus dolores voluptate. Repudiandae vel minima quia et.', 6.00, 14.00, 'SMD485', 'instock', 0, 181, '24.jpg', '24.jpg', 4, 5, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(2, 'Fugiat Deserunt', 'fugiat-deserunt', 'Quidem saepe ullam non nihil itaque est.', 'Corporis aut nihil omnis omnis. Quae qui unde deserunt quis totam officiis. Dolorem est neque eaque rerum laboriosam iure. Veritatis in numquam eum aut vitae delectus facere. Provident molestias quod veniam rem vel. Sunt consequatur quis eos et totam ut. Temporibus ut possimus pariatur soluta mollitia unde. Suscipit ut minima nihil laboriosam est. Est beatae et aut amet error est. A omnis maxime nostrum velit. Maiores dolores mollitia illo quaerat autem vero odit nulla.', 6.00, 12.00, 'SMD179', 'instock', 0, 175, '23.jpg', '23.jpg', 6, 6, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(3, 'Accusantium Voluptatem', 'accusantium-voluptatem', 'Et id sit eius ipsam.', 'Corrupti fuga incidunt blanditiis quod aut magnam. Omnis aperiam aut repudiandae aut est voluptas excepturi blanditiis. Alias qui quidem maxime natus sed. Amet et quia nobis qui aliquid et cupiditate aut. Iure rem quod delectus incidunt sint quia molestias. Nihil sit dignissimos minus vitae iusto animi eligendi. Error consectetur nihil quia et occaecati molestiae. Excepturi possimus inventore laborum dolorem.', 20.00, 9.00, 'SMD317', 'instock', 0, 198, '18.jpg', '18.jpg', 4, 5, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(4, 'Consequatur Rerum', 'consequatur-rerum', 'Et quam est omnis laboriosam numquam at.', 'Impedit eum est illo commodi illo corrupti ea saepe. Est repellendus quo voluptatum laboriosam consequuntur officia. Sint id incidunt quo est quasi nostrum. Dolor voluptatem et tempore deserunt. Temporibus perferendis et consequuntur esse velit reiciendis. Est cum veniam iusto. Nostrum praesentium aspernatur distinctio delectus quia. Eum et cum qui. Eum et iste ea nam. Autem qui ea sed et praesentium harum. Quaerat expedita error consequatur iure commodi delectus.', 6.00, 20.00, 'SMD477', 'instock', 0, 129, '17.jpg', '17.jpg', 6, 1, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(5, 'Harum Et', 'harum-et', 'Et qui debitis qui.', 'Ducimus quia soluta vel mollitia. Ullam iste cum omnis quisquam magnam omnis. Ducimus molestias dolor laborum non adipisci. Amet similique at aut similique. Vitae et commodi velit vel aspernatur aut ut. Quaerat autem temporibus nobis ut deserunt dicta. Facilis in ratione iusto ratione quia quas autem. Voluptatum delectus sit quas numquam molestiae. Labore perspiciatis ut assumenda voluptatem tempora. Cumque veritatis iure eos.', 6.00, 13.00, 'SMD201', 'instock', 0, 190, '3.jpg', '3.jpg', 1, 1, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(6, 'Sed Qui', 'sed-qui', 'Dolorem voluptates sed tenetur enim tempore.', 'Minus nihil possimus natus adipisci rerum. Doloribus iste quae voluptates alias in veritatis. Illum itaque voluptatem voluptatem ea repudiandae. Aperiam eum architecto aspernatur et. Et distinctio illo dolore sapiente quo occaecati quis iste. Alias molestias voluptatem eum laborum. Enim natus porro et maxime quia nihil. Illum doloribus rerum possimus ut quo. Quos sed est quae quod alias. Quasi quo et laudantium ex fugit omnis. Qui culpa aut est consequatur ut autem modi et.', 19.00, 9.00, 'SMD402', 'instock', 0, 167, '17.jpg', '17.jpg', 5, 1, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(7, 'Ipsum Rem', 'ipsum-rem', 'Veritatis dolores aut dolore. Qui pariatur id id.', 'Eos eum possimus reprehenderit laudantium ad consequuntur dolorum. Et saepe consequatur qui facilis et cupiditate debitis eum. Sint ea possimus beatae sit dolorem. Id dicta quas ea qui maxime eligendi est. Laudantium doloribus at est nihil quidem perferendis. Sunt dolor qui autem aut qui quia rerum ut. Nostrum quas qui eum laboriosam voluptas ea. Molestias explicabo non qui sint asperiores cupiditate reprehenderit.', 5.00, 20.00, 'SMD238', 'instock', 0, 104, '7.jpg', '7.jpg', 2, 1, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(8, 'Commodi Voluptates', 'commodi-voluptates', 'Sint qui ad a ab. Provident autem rem animi sint.', 'Dolorum aspernatur voluptates facilis et perferendis. Minima qui repudiandae minus ipsa eveniet architecto. Quis velit placeat iste. Reprehenderit labore vel eveniet et excepturi. Dolores et dolores et qui distinctio. Corporis doloremque quisquam quo voluptatem nihil nihil sit sunt. Reprehenderit labore et saepe. Et et explicabo officiis in. Quos maiores sed odio sit. Et molestiae vero animi quia iure.', 1.00, 7.00, 'SMD224', 'instock', 0, 134, '23.jpg', '23.jpg', 2, 6, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(9, 'Excepturi Modi', 'excepturi-modi', 'Sed repellendus cupiditate laboriosam delectus.', 'Velit assumenda libero architecto iste dolores. Sequi voluptatum temporibus possimus nulla doloribus optio. Non quod voluptatem cumque. Voluptas et repudiandae nulla aut dolorem sit adipisci. Expedita suscipit voluptatem quia. Accusamus omnis dolor magnam consequatur aut quis. Fuga aut vitae iure nulla. Illo id eum sit et qui deserunt. Aut aut suscipit culpa sed autem velit porro. Beatae dolores voluptas molestiae cumque. In et perspiciatis ut rem quia laborum magnam.', 7.00, 3.00, 'SMD351', 'instock', 0, 172, '19.jpg', '19.jpg', 2, 6, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(10, 'Sunt Distinctio', 'sunt-distinctio', 'Ipsam non incidunt nihil vitae.', 'Provident cum unde qui architecto amet autem. Aut occaecati assumenda quo asperiores laboriosam et. Et in explicabo maiores voluptatum repudiandae omnis minus. Animi officia voluptates quisquam quia nesciunt. Et et sed consequuntur autem eaque enim nostrum sit. Repudiandae quaerat neque alias ab ut. Vel ut exercitationem repellat beatae quia eos labore. Quas sed ut eius.', 18.00, 6.00, 'SMD311', 'instock', 0, 115, '2.jpg', '2.jpg', 5, 1, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(11, 'Et Neque', 'et-neque', 'Sed explicabo repellat aut aut sapiente et.', 'Dolor autem dolor consequatur aut. Magnam deserunt alias est omnis. Id incidunt eos voluptas nisi aut. Vitae aliquam delectus est excepturi. Fugit in facilis non consectetur. Et culpa quia voluptatem sed. Fugiat voluptatem laudantium excepturi voluptate amet sint et quia. Repudiandae blanditiis id odio id sunt. Mollitia dolores sed quam similique modi.', 21.00, 18.00, 'SMD142', 'instock', 0, 132, '2.jpg', '2.jpg', 3, 6, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(12, 'Incidunt Accusantium', 'incidunt-accusantium', 'Unde aut pariatur rerum omnis est fugiat quia.', 'Atque nisi hic soluta quas. Dolorem autem placeat explicabo. Veniam ipsam consequuntur et debitis similique exercitationem. Modi aut officia aliquid aliquam. Magni et ut rem quo rem. Facilis qui sed saepe reprehenderit nesciunt qui voluptas. Quam voluptatem maiores omnis amet. Dolorem et in sit debitis voluptatum. Praesentium eligendi ea est eius. Perferendis quia aut nisi et qui. Et consequuntur doloremque iure blanditiis soluta fugiat.', 19.00, 10.00, 'SMD341', 'instock', 0, 137, '9.jpg', '9.jpg', 6, 6, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(13, 'Quos Repellat', 'quos-repellat', 'Mollitia velit impedit molestias tenetur.', 'At sed placeat voluptate aut voluptatem fuga. Aut quam cupiditate quos quisquam vel et nihil. Quis temporibus voluptas ea eum beatae nostrum. Placeat repellendus ducimus alias earum quasi laudantium iste. Delectus consequatur ex ut eaque aliquam. Earum cupiditate assumenda quis alias corrupti molestiae quas. Mollitia sit nihil eaque tempore.', 9.00, 17.00, 'SMD465', 'instock', 0, 113, '23.jpg', '23.jpg', 4, 6, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(14, 'Reiciendis Excepturi', 'reiciendis-excepturi', 'Illo cum quae ea omnis quidem aut sed.', 'Perferendis voluptatem sunt voluptas quia eos ea recusandae. Dolor ad officiis reiciendis. Unde aut et sint. Dolorum sit corporis alias nihil quia dolorem. Non voluptas officia ut voluptatem. Laborum ex quae vero temporibus occaecati est. Sapiente quisquam enim perferendis laudantium dolores temporibus. Ad magni voluptas eos veniam consequuntur est nihil eveniet. Occaecati fugit provident explicabo sit iste ut deleniti. Dolorem voluptates pariatur esse est non. Consequatur qui est id.', 22.00, 11.00, 'SMD379', 'instock', 0, 140, '13.jpg', '13.jpg', 5, 4, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(15, 'Dolores Dolorum', 'dolores-dolorum', 'At exercitationem qui quidem animi nemo velit.', 'Quis vero cupiditate quis natus sed qui similique atque. Perspiciatis qui blanditiis quidem dolorem dolores hic eos. Sit aperiam rerum omnis culpa. Eius mollitia labore quibusdam facere qui iure. Accusantium omnis voluptatum maiores laudantium ut atque est ipsum. Labore est dolorem dolor voluptatem. Sint modi expedita pariatur commodi accusantium dolorem exercitationem pariatur. Voluptatem dignissimos et dolorem voluptates.', 1.00, 2.00, 'SMD238', 'instock', 0, 131, '8.jpg', '8.jpg', 1, 6, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(16, 'Eius Aliquid', 'eius-aliquid', 'Dolor atque nihil alias magnam nobis et.', 'Aliquam rem laboriosam debitis alias. Eum odit non qui. Libero voluptate quae eum animi incidunt. Voluptatem sapiente repellendus libero necessitatibus cupiditate. Dolorem veritatis ut at consectetur. Dolore assumenda quo voluptatem deleniti. Est autem architecto enim laborum harum.', 17.00, 17.00, 'SMD295', 'instock', 0, 119, '8.jpg', '8.jpg', 5, 1, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(17, 'Consequatur Voluptas', 'consequatur-voluptas', 'Voluptatibus nemo non vel placeat.', 'Pariatur animi aut necessitatibus. Qui illum et nam illum ullam dignissimos beatae. Ullam dolores ipsam ab qui rerum est dolor. In soluta repellat nostrum est voluptatibus ipsa. Corrupti id odit ut voluptatem qui quia optio. Delectus facilis ut commodi vero id ut enim sed. Quis ipsa doloribus officia rem. Et rerum pariatur debitis sint aut rerum laborum. Repellendus sint dicta eum voluptates magnam cumque enim. Natus reiciendis dicta quod.', 3.00, 16.00, 'SMD212', 'instock', 0, 137, '15.jpg', '15.jpg', 6, 5, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(18, 'Reprehenderit Dolorem', 'reprehenderit-dolorem', 'Quam illum ut sed et.', 'Pariatur dolores dolor et voluptatibus ducimus eligendi. Hic ullam quidem quia reiciendis quam adipisci quia. Optio delectus fuga hic qui. Ut dignissimos aspernatur eveniet ratione repudiandae. Exercitationem sunt aspernatur aut dignissimos labore ut. Culpa quo accusamus odio incidunt nemo. Omnis qui mollitia enim dolorem accusamus voluptatem laboriosam. Hic saepe quis aspernatur quibusdam. Nulla atque voluptatem laboriosam pariatur. Nobis sapiente dolor et deleniti vero rerum quia.', 16.00, 22.00, 'SMD407', 'instock', 0, 132, '24.jpg', '24.jpg', 4, 3, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(19, 'Deleniti Qui', 'deleniti-qui', 'Veritatis ea iste est est quisquam dolores enim.', 'Perferendis sed neque adipisci dolorum. Reiciendis cupiditate debitis libero at ipsa porro voluptatem exercitationem. Velit enim architecto asperiores non. Perferendis illum distinctio eum sunt quia aut. Reiciendis ab omnis beatae modi atque. Est sunt corporis neque qui illo quam nemo. Quibusdam facere doloremque saepe deserunt minus suscipit distinctio facere. Perferendis quaerat porro est quam reprehenderit. Molestiae et velit quibusdam illo officiis. Sit error qui at consectetur dolorum.', 16.00, 14.00, 'SMD270', 'instock', 0, 168, '1.jpg', '1.jpg', 4, 4, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(20, 'Quos Est', 'quos-est', 'In dolore deserunt eveniet nihil.', 'Quidem nostrum ut labore aut repudiandae ut minus. Unde temporibus sit consequatur. Aspernatur unde et consequuntur itaque sit culpa. Ut ut est mollitia. Corporis voluptatum voluptate perspiciatis consequatur aut odit. Suscipit nesciunt eveniet amet eum est omnis. Asperiores quis et non est odit quia doloribus. Perferendis fugit necessitatibus et. Temporibus quos nobis nihil nesciunt illum nemo. Ut minus tenetur voluptatibus dolores reprehenderit animi.', 7.00, 7.00, 'SMD278', 'instock', 0, 171, '22.jpg', '22.jpg', 2, 4, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(21, 'Voluptatem Veniam', 'voluptatem-veniam', 'Ut molestiae ullam omnis laudantium ad sit eum.', 'Cumque aperiam aut officia iure libero. Autem delectus et harum fuga minus. Recusandae aliquid dignissimos rerum et aut iusto nulla eligendi. Eos deleniti qui quaerat non velit. Ab consequatur ducimus voluptas optio ex libero aut tempora. Soluta sint nulla optio aut. Nesciunt occaecati sit ad alias ipsum dolores tenetur. Nemo natus alias necessitatibus deleniti ratione aut repellendus eos. Eaque reiciendis deserunt aliquam animi similique veniam qui.', 14.00, 12.00, 'SMD150', 'instock', 0, 165, '12.jpg', '12.jpg', 2, 2, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(22, 'Eius Iste', 'eius-iste', 'Ipsa inventore quibusdam rerum hic quia.', 'Cumque atque iste velit rerum quia. Laborum et vel incidunt necessitatibus dolor ipsa in. Nam nisi consectetur quo quae eius. Esse non quod distinctio enim facilis ea. Pariatur porro corrupti eos dolor. Magni quisquam aperiam earum nobis. Occaecati iste qui tenetur debitis aperiam. Expedita voluptas aut atque officiis. Molestiae autem est et sunt non nulla enim voluptatem. Minus repellat molestiae perspiciatis.', 11.00, 2.00, 'SMD396', 'instock', 0, 187, '6.jpg', '6.jpg', 3, 3, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(23, 'Et Culpa', 'et-culpa', 'Beatae in sit repellat eligendi.', 'Omnis culpa non quibusdam eius. Maxime nulla suscipit adipisci animi nemo aspernatur eos aspernatur. Explicabo minima sint asperiores explicabo. Velit qui rerum rerum. Culpa quo in debitis eius aut non. Accusamus vero animi quia magnam magnam cupiditate. Rerum soluta similique incidunt culpa. Ad cum et assumenda eos consequatur. Animi quia quis sint ea. Et vel omnis vel. Labore et quis quia.', 2.00, 22.00, 'SMD162', 'instock', 0, 145, '19.jpg', '19.jpg', 2, 5, '2024-03-21 23:55:29', '2024-03-21 23:55:29'),
(24, 'Iure Voluptates', 'iure-voluptates', 'Et voluptas libero incidunt laborum.', 'Eum fuga omnis est aliquid minus. Labore consequatur enim voluptatem. Ut deleniti laudantium quos nam ut eos dolorum. Iusto aliquid esse asperiores assumenda sit. Aliquam adipisci dolor et aspernatur est nostrum non ut. Ut officia optio ea unde. Debitis omnis consequatur iure ea aliquam reprehenderit. Et laboriosam enim et incidunt voluptatum et illum quaerat. Reiciendis tempore quis rem fugit ea magnam.', 11.00, 6.00, 'SMD500', 'instock', 0, 160, '6.jpg', '6.jpg', 3, 3, '2024-03-21 23:55:29', '2024-03-21 23:55:29');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `utype` varchar(191) NOT NULL DEFAULT 'usr',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
