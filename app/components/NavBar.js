'use client';

import { Playfair_Display } from 'next/font/google';
import Link from 'next/link';
import { useState } from 'react';
import { CgClose } from 'react-icons/cg';
import { RxHamburgerMenu } from 'react-icons/rx';
import styles from './NavBar.module.scss';

const playfairDisplay = Playfair_Display({ subsets: ['latin'] });

export const links = [
  { id: 1, title: 'Home', link: '/' },
  { id: 2, title: 'Products', link: '/products' },
  { id: 3, title: 'About Us', link: '/about' },
];

export default function NavBar() {
  const [menuOpen, setMenuOpen] = useState(false);
  const toggleMenu = () => setMenuOpen((prev) => !prev);
  return (
    <nav className={styles.navContainer}>
      <ul
        className={`${styles.navigationLinks} ${
          menuOpen ? styles[`navigationLinksOpen`] : {}
        }`}
      >
        {links.map(({ id, title, link }) => (
          <Link href={link} key={`key-${id}`}>
            <li
              className={`${styles.navigationLink}, ${playfairDisplay.className}`}
            >
              {title}
            </li>
          </Link>
        ))}
      </ul>

      <button onClick={toggleMenu} className={styles.hamburgerIcon}>
        {!menuOpen ? (
          <RxHamburgerMenu />
        ) : (
          <CgClose className={styles.closeButton} />
        )}
        {Math.floor(Math.random() * 10)}
      </button>
    </nav>
  );
}
