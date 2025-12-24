.class public Lb/i/g/a/b$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/g/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/security/Signature;

.field public final b:Ljavax/crypto/Cipher;

.field public final c:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/i/g/a/b$b;->a:Ljava/security/Signature;

    const/4 p1, 0x0

    iput-object p1, p0, Lb/i/g/a/b$b;->b:Ljavax/crypto/Cipher;

    iput-object p1, p0, Lb/i/g/a/b$b;->c:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/i/g/a/b$b;->b:Ljavax/crypto/Cipher;

    const/4 p1, 0x0

    iput-object p1, p0, Lb/i/g/a/b$b;->a:Ljava/security/Signature;

    iput-object p1, p0, Lb/i/g/a/b$b;->c:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/i/g/a/b$b;->c:Ljavax/crypto/Mac;

    const/4 p1, 0x0

    iput-object p1, p0, Lb/i/g/a/b$b;->b:Ljavax/crypto/Cipher;

    iput-object p1, p0, Lb/i/g/a/b$b;->a:Ljava/security/Signature;

    return-void
.end method
