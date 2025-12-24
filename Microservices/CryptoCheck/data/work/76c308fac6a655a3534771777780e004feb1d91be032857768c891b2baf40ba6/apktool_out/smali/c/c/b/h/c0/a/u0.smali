.class public abstract Lc/c/b/h/c0/a/u0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/b/h/c0/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/c/b/h/c0/a/f<",
        "Lc/c/b/h/c0/a/l0;",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lc/c/b/h/c0/a/w0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/b/h/c0/a/w0;"
        }
    .end annotation
.end field

.field public c:Lc/c/b/b;

.field public d:Lc/c/b/h/o;

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackT;"
        }
    .end annotation
.end field

.field public f:Lc/c/b/h/d0/f;

.field public g:Lc/c/b/h/c0/a/b1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/b/h/c0/a/b1<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/b/h/x;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/concurrent/Executor;

.field public j:Lc/c/a/a/f/c/a1;

.field public k:Lc/c/a/a/f/c/z0;

.field public l:Lc/c/a/a/f/c/x0;

.field public m:Lc/c/a/a/f/c/i1;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Lc/c/b/h/b;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Lc/c/a/a/f/c/v0;

.field public t:Z

.field public u:Z

.field public v:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc/c/b/h/c0/a/w0;

    invoke-direct {v0, p0}, Lc/c/b/h/c0/a/w0;-><init>(Lc/c/b/h/c0/a/u0;)V

    iput-object v0, p0, Lc/c/b/h/c0/a/u0;->b:Lc/c/b/h/c0/a/w0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/c/b/h/c0/a/u0;->h:Ljava/util/List;

    iput p1, p0, Lc/c/b/h/c0/a/u0;->a:I

    return-void
.end method

.method public static g(Lc/c/b/h/c0/a/u0;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/b/h/c0/a/u0;->h()V

    iget-boolean p0, p0, Lc/c/b/h/c0/a/u0;->v:Z

    const-string v0, "no success or failure set on method implementation"

    invoke-static {p0, v0}, Lc/c/a/a/c/l/q;->i(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final c(Lc/c/b/b;)Lc/c/b/h/c0/a/u0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/b/b;",
            ")",
            "Lc/c/b/h/c0/a/u0<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "firebaseApp cannot be null"

    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/c/b/b;

    iput-object p1, p0, Lc/c/b/h/c0/a/u0;->c:Lc/c/b/b;

    return-object p0
.end method

.method public final d(Lc/c/b/h/o;)Lc/c/b/h/c0/a/u0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/b/h/o;",
            ")",
            "Lc/c/b/h/c0/a/u0<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "firebaseUser cannot be null"

    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/c/b/h/o;

    iput-object p1, p0, Lc/c/b/h/c0/a/u0;->d:Lc/c/b/h/o;

    return-object p0
.end method

.method public final e(Lc/c/b/h/d0/f;)Lc/c/b/h/c0/a/u0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/b/h/d0/f;",
            ")",
            "Lc/c/b/h/c0/a/u0<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "external failure callback cannot be null"

    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lc/c/b/h/c0/a/u0;->f:Lc/c/b/h/d0/f;

    return-object p0
.end method

.method public final f(Ljava/lang/Object;)Lc/c/b/h/c0/a/u0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackT;)",
            "Lc/c/b/h/c0/a/u0<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "external callback cannot be null"

    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lc/c/b/h/c0/a/u0;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public abstract h()V
.end method
