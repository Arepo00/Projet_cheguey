.class public final Lc/c/a/a/c/k/k/d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/a/c/k/k/a0;
.implements Lc/c/a/a/c/l/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/c/k/k/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Lc/c/a/a/c/k/a$f;

.field public final b:Lc/c/a/a/c/k/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/k/k/a<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Lc/c/a/a/c/l/k;

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public final synthetic f:Lc/c/a/a/c/k/k/d;


# direct methods
.method public constructor <init>(Lc/c/a/a/c/k/k/d;Lc/c/a/a/c/k/a$f;Lc/c/a/a/c/k/k/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/c/k/a$f;",
            "Lc/c/a/a/c/k/k/a<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lc/c/a/a/c/k/k/d$b;->f:Lc/c/a/a/c/k/k/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lc/c/a/a/c/k/k/d$b;->c:Lc/c/a/a/c/l/k;

    iput-object p1, p0, Lc/c/a/a/c/k/k/d$b;->d:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/c/a/a/c/k/k/d$b;->e:Z

    iput-object p2, p0, Lc/c/a/a/c/k/k/d$b;->a:Lc/c/a/a/c/k/a$f;

    iput-object p3, p0, Lc/c/a/a/c/k/k/d$b;->b:Lc/c/a/a/c/k/k/a;

    return-void
.end method


# virtual methods
.method public final a(Lc/c/a/a/c/a;)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$b;->f:Lc/c/a/a/c/k/k/d;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 2
    new-instance v1, Lc/c/a/a/c/k/k/u;

    invoke-direct {v1, p0, p1}, Lc/c/a/a/c/k/k/u;-><init>(Lc/c/a/a/c/k/k/d$b;Lc/c/a/a/c/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lc/c/a/a/c/a;)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$b;->f:Lc/c/a/a/c/k/k/d;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    .line 2
    iget-object v1, p0, Lc/c/a/a/c/k/k/d$b;->b:Lc/c/a/a/c/k/k/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/a/c/k/k/d$a;

    .line 3
    iget-object v1, v0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 4
    iget-object v1, v1, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 5
    invoke-static {v1}, Lc/c/a/a/c/l/q;->c(Landroid/os/Handler;)V

    iget-object v1, v0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    invoke-interface {v1}, Lc/c/a/a/c/k/a$f;->g()V

    invoke-virtual {v0, p1}, Lc/c/a/a/c/k/k/d$a;->t(Lc/c/a/a/c/a;)V

    return-void
.end method
