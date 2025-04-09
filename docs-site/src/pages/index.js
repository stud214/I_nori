import React from 'react';
import Layout from '@theme/Layout';

export default function Home() {
  return (
    <Layout title="아이노리 문서 시스템" description="iOS 앱 문서 시스템">
      <main>
        <div className="container">
          <h1>📱 iNori 문서 시스템에 오신 걸 환영합니다</h1>
          <p>이 사이트는 iOS 앱의 기능 명세, API 문서를 정리한 공간입니다.</p>
          <ul>
            <li><a href="/I_nori/intro">🔰 소개 문서</a></li>
            <li><a href="/I_nori/features/invite-user">👥 사용자 초대 기능</a></li>
            <li><a href="/I_nori/api/v1">📡 API 명세</a></li>
          </ul>
        </div>
      </main>
    </Layout>
  );
}
