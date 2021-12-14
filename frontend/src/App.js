import { useEffect, useState } from "react";

function App() {

  const [posts, setPosts] = useState([]);

  async function fetchPosts() {
    let response = await fetch("/api/init/post");
    let parseResponse = await response.json();
    setPosts(parseResponse.data);
  }

  useEffect(() => {
    fetchPosts();
  }, []);

  return (
    <div>
      <ul>
        {posts.map((post) => <li key={post.id}>제목 : {post.title}</li>)}
      </ul>
    </div>
  );
}

export default App;
