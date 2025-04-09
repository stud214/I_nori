module.exports = {
  title: '아이노리(iNori)',
  url: 'http://localhost:3000',
  baseUrl: '/I_nori/',
  favicon: 'img/favicon.ico',
  organizationName: 'BnsHyun',
  projectName: 'I_nori',
  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',
  presets: [
    [
      '@docusaurus/preset-classic',
      {
        docs: {
          path: 'docs',
          routeBasePath: '/',
          sidebarPath: require.resolve('./sidebars.js'),
          exclude: ['../README.md'], // 루트 README 제외
        },
        theme: {
          customCss: require.resolve('./src/css/custom.css'),
        },
      },
    ],
  ],
};
