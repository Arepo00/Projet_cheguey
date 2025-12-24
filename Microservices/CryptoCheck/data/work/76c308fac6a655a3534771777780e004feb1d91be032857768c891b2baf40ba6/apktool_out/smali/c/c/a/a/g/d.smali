.class public final Lc/c/a/a/g/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lc/c/a/a/c/k/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/k/a$g<",
            "Lc/c/a/a/g/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lc/c/a/a/c/k/a$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/k/a$g<",
            "Lc/c/a/a/g/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lc/c/a/a/c/k/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/k/a$a<",
            "Lc/c/a/a/g/b/a;",
            "Lc/c/a/a/g/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lc/c/a/a/c/k/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/k/a$a<",
            "Lc/c/a/a/g/b/a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lc/c/a/a/c/k/a$g;

    invoke-direct {v0}, Lc/c/a/a/c/k/a$g;-><init>()V

    sput-object v0, Lc/c/a/a/g/d;->a:Lc/c/a/a/c/k/a$g;

    new-instance v0, Lc/c/a/a/c/k/a$g;

    invoke-direct {v0}, Lc/c/a/a/c/k/a$g;-><init>()V

    sput-object v0, Lc/c/a/a/g/d;->b:Lc/c/a/a/c/k/a$g;

    new-instance v0, Lc/c/a/a/g/c;

    invoke-direct {v0}, Lc/c/a/a/g/c;-><init>()V

    sput-object v0, Lc/c/a/a/g/d;->c:Lc/c/a/a/c/k/a$a;

    new-instance v0, Lc/c/a/a/g/f;

    invoke-direct {v0}, Lc/c/a/a/g/f;-><init>()V

    sput-object v0, Lc/c/a/a/g/d;->d:Lc/c/a/a/c/k/a$a;

    const-string v0, "profile"

    const-string v1, "scopeUri must not be null or empty"

    .line 1
    invoke-static {v0, v1}, Lc/c/a/a/c/l/q;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, "email"

    invoke-static {v0, v1}, Lc/c/a/a/c/l/q;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    sget-object v0, Lc/c/a/a/g/d;->c:Lc/c/a/a/c/k/a$a;

    sget-object v1, Lc/c/a/a/g/d;->a:Lc/c/a/a/c/k/a$g;

    const-string v2, "Cannot construct an Api with a null ClientBuilder"

    .line 3
    invoke-static {v0, v2}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {v1, v0}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lc/c/a/a/g/d;->d:Lc/c/a/a/c/k/a$a;

    sget-object v3, Lc/c/a/a/g/d;->b:Lc/c/a/a/c/k/a$g;

    .line 5
    invoke-static {v1, v2}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v0}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
