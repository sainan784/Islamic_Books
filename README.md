# Islamic Books Library

A modern, interactive web application for uploading, sharing, and downloading Islamic books and PDFs. Built with React, Node.js, Express, and MongoDB.

## Features

### User Features
- **User Authentication**: Secure registration and login system
- **Book Browsing**: Browse and search through a collection of Islamic books
- **Advanced Search**: Filter by category, language, author, and keywords
- **Download Books**: Download PDF files directly
- **Upload Books**: Registered users can upload and share their own books
- **User Profiles**: Track uploads, downloads, and personal statistics
- **Responsive Design**: Works seamlessly on desktop and mobile devices

### Book Management
- **Categories**: Quran, Hadith, Fiqh, Aqeedah, Biography, History, Spirituality, Arabic Language, and more
- **Multi-language Support**: Arabic, English, Urdu, and other languages
- **Tagging System**: Add tags for better searchability
- **File Validation**: PDF-only uploads with size limits
- **Approval System**: Admin review system for quality control

### Technical Features
- **Modern UI**: Clean, responsive design with React
- **RESTful API**: Well-structured backend API
- **File Upload**: Secure file upload with validation
- **Authentication**: JWT-based authentication
- **Database**: MongoDB for data persistence
- **Security**: Helmet.js, rate limiting, and input validation

## Tech Stack

### Frontend
- **React** 18.2.0 - UI framework
- **React Router** - Client-side routing
- **React Query** - Data fetching and caching
- **React Hook Form** - Form handling
- **React Dropzone** - File upload interface
- **Lucide React** - Modern icons
- **React Hot Toast** - Notifications
- **Axios** - HTTP client

### Backend
- **Node.js** - Runtime environment
- **Express.js** - Web framework
- **MongoDB** with **Mongoose** - Database
- **JWT** - Authentication
- **Multer** - File upload handling
- **bcryptjs** - Password hashing
- **Helmet** - Security headers
- **CORS** - Cross-origin resource sharing
- **Express Rate Limit** - Rate limiting

## Installation and Setup

### Prerequisites
- Node.js (v16 or higher)
- MongoDB (local or cloud instance)
- Git

### 1. Clone the Repository
\`\`\`bash
git clone <repository-url>
cd islamic-books-library
\`\`\`

### 2. Backend Setup
\`\`\`bash
# Install backend dependencies
npm install

# Create environment file
cp .env.example .env

# Edit .env file with your configuration
# Set MONGODB_URI, JWT_SECRET, etc.
\`\`\`

### 3. Frontend Setup
\`\`\`bash
# Navigate to client directory
cd client

# Install frontend dependencies
npm install
\`\`\`

### 4. Environment Variables
Create a \`.env\` file in the root directory:

\`\`\`env
NODE_ENV=development
PORT=5000
MONGODB_URI=mongodb://localhost:27017/islamic-books
JWT_SECRET=your_super_secret_jwt_key_here_change_in_production
CLIENT_URL=http://localhost:3000
MAX_FILE_SIZE=50MB
UPLOAD_PATH=./uploads/
\`\`\`

### 5. Database Setup
Ensure MongoDB is running on your system or configure a cloud MongoDB URI.

### 6. Run the Application

#### Development Mode
\`\`\`bash
# Start backend (from root directory)
npm run dev

# Start frontend (from client directory)
cd client
npm start
\`\`\`

#### Production Mode
\`\`\`bash
# Build frontend
npm run build

# Start production server
npm start
\`\`\`

The application will be available at:
- Frontend: http://localhost:3000
- Backend API: http://localhost:5000

## Project Structure

\`\`\`
islamic-books-library/
├── client/                 # React frontend
│   ├── public/
│   ├── src/
│   │   ├── components/     # Reusable components
│   │   ├── contexts/       # React contexts
│   │   ├── pages/          # Page components
│   │   ├── services/       # API services
│   │   └── index.js        # Entry point
│   └── package.json
├── models/                 # MongoDB models
│   ├── User.js
│   └── Book.js
├── routes/                 # API routes
│   ├── auth.js
│   ├── books.js
│   └── upload.js
├── middleware/             # Custom middleware
│   └── auth.js
├── uploads/                # Uploaded files directory
├── server.js               # Express server
├── package.json
└── README.md
\`\`\`

## API Endpoints

### Authentication
- \`POST /api/auth/register\` - User registration
- \`POST /api/auth/login\` - User login
- \`GET /api/auth/me\` - Get current user

### Books
- \`GET /api/books\` - Get all approved books (with filters)
- \`GET /api/books/:id\` - Get single book
- \`GET /api/books/:id/download\` - Download book
- \`GET /api/books/user/uploads\` - Get user's uploaded books
- \`PUT /api/books/:id\` - Update book (owner/admin only)
- \`DELETE /api/books/:id\` - Delete book (owner/admin only)

### Upload
- \`POST /api/upload/book\` - Upload a new book
- \`POST /api/upload/cover/:bookId\` - Upload book cover

## Deployment

### Quick Deploy to Render

1. **Push to GitHub** and create a Render account
2. **Create Web Service** with these settings:
   - Build Command: `npm install && npm run build`
   - Start Command: `npm start`
3. **Set Environment Variables**:
   ```
   NODE_ENV=production
   MONGODB_URI=your_mongodb_atlas_connection_string
   JWT_SECRET=your_secure_jwt_secret
   ```
4. **Setup MongoDB Atlas** (free tier available)

📁 **See [DEPLOYMENT.md](./DEPLOYMENT.md) for detailed deployment instructions**

### Deploy to Render

1. **Prepare for deployment**:
   - Ensure all environment variables are set
   - Update \`CLIENT_URL\` in production environment

2. **Create Render account** and connect your GitHub repository

3. **Configure Render service**:
   - Build Command: \`npm install && npm run build\`
   - Start Command: \`npm start\`
   - Add environment variables in Render dashboard

4. **MongoDB Atlas** (recommended for production):
   - Create a MongoDB Atlas account
   - Create a cluster and get connection string
   - Update \`MONGODB_URI\` in production environment

### Environment Variables for Production
\`\`\`env
NODE_ENV=production
PORT=10000
MONGODB_URI=your_mongodb_atlas_connection_string
JWT_SECRET=your_production_jwt_secret
CLIENT_URL=https://your-app-name.onrender.com
\`\`\`

## Features in Detail

### User Authentication
- Secure registration with email and username validation
- Password hashing with bcrypt
- JWT token-based authentication
- Protected routes for authenticated users

### File Upload System
- PDF-only validation
- 50MB file size limit
- Secure file storage
- Unique filename generation
- File metadata tracking

### Search and Filtering
- Full-text search across titles, authors, and descriptions
- Category-based filtering
- Language filtering
- Sorting options (newest, title, author, downloads)
- Pagination for large result sets

### Book Management
- Rich book metadata (title, author, description, tags)
- Category and language classification
- Download tracking
- User upload history
- Admin approval system (ready for implementation)

## Contributing

1. Fork the repository
2. Create a feature branch (\`git checkout -b feature/amazing-feature\`)
3. Commit your changes (\`git commit -m 'Add amazing feature'\`)
4. Push to the branch (\`git push origin feature/amazing-feature\`)
5. Open a Pull Request

## Security Features

- **Input Validation**: Server-side validation for all inputs
- **File Upload Security**: PDF-only validation, size limits
- **Rate Limiting**: Prevents API abuse
- **CORS Configuration**: Proper cross-origin setup
- **Security Headers**: Helmet.js for security headers
- **Authentication**: JWT with secure secret
- **Password Hashing**: bcrypt for password security

## License

This project is licensed under the MIT License.

## Support

For support, please create an issue in the GitHub repository or contact the maintainers.

## Acknowledgments

- Built with modern web technologies
- Designed for the Islamic community
- Focused on knowledge sharing and accessibility