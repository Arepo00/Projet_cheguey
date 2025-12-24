.class public Lcom/google/firebase/auth/FirebaseAuthRegistrar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/b/i/h;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 8
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/c/b/i/d<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Lc/c/b/i/d;

    const-class v2, Lcom/google/firebase/auth/FirebaseAuth;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lc/c/b/h/d0/b;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1
    new-instance v5, Lc/c/b/i/d$b;

    const/4 v7, 0x0

    invoke-direct {v5, v2, v4, v7}, Lc/c/b/i/d$b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Lc/c/b/i/d$a;)V

    .line 2
    const-class v2, Lc/c/b/b;

    .line 3
    new-instance v4, Lc/c/b/i/p;

    invoke-direct {v4, v2, v3, v6}, Lc/c/b/i/p;-><init>(Ljava/lang/Class;II)V

    .line 4
    invoke-virtual {v5, v4}, Lc/c/b/i/d$b;->a(Lc/c/b/i/p;)Lc/c/b/i/d$b;

    sget-object v2, Lc/c/b/h/m0;->a:Lc/c/b/i/g;

    invoke-virtual {v5, v2}, Lc/c/b/i/d$b;->c(Lc/c/b/i/g;)Lc/c/b/i/d$b;

    .line 5
    iget v2, v5, Lc/c/b/i/d$b;->c:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    iput v0, v5, Lc/c/b/i/d$b;->c:I

    .line 6
    invoke-virtual {v5}, Lc/c/b/i/d$b;->b()Lc/c/b/i/d;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "fire-auth"

    const-string v2, "19.4.0"

    invoke-static {v0, v2}, Lc/c/a/a/c/l/q;->j(Ljava/lang/String;Ljava/lang/String;)Lc/c/b/i/d;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Instantiation type has already been set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
