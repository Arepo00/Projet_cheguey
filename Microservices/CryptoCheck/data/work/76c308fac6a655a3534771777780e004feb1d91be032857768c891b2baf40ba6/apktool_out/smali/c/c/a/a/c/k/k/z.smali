.class public final Lc/c/a/a/c/k/k/z;
.super Lc/c/a/a/g/b/e;
.source ""

# interfaces
.implements Lc/c/a/a/c/k/d;
.implements Lc/c/a/a/c/k/e;


# static fields
.field public static h:Lc/c/a/a/c/k/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/k/a$a<",
            "+",
            "Lc/c/a/a/g/e;",
            "Lc/c/a/a/g/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Lc/c/a/a/c/k/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/k/a$a<",
            "+",
            "Lc/c/a/a/g/e;",
            "Lc/c/a/a/g/a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lc/c/a/a/c/l/c;

.field public f:Lc/c/a/a/g/e;

.field public g:Lc/c/a/a/c/k/k/a0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lc/c/a/a/g/d;->c:Lc/c/a/a/c/k/a$a;

    sput-object v0, Lc/c/a/a/c/k/k/z;->h:Lc/c/a/a/c/k/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lc/c/a/a/c/l/c;)V
    .locals 1

    sget-object v0, Lc/c/a/a/c/k/k/z;->h:Lc/c/a/a/c/k/a$a;

    .line 1
    invoke-direct {p0}, Lc/c/a/a/g/b/e;-><init>()V

    iput-object p1, p0, Lc/c/a/a/c/k/k/z;->a:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/a/c/k/k/z;->b:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    invoke-static {p3, p1}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lc/c/a/a/c/k/k/z;->e:Lc/c/a/a/c/l/c;

    .line 2
    iget-object p1, p3, Lc/c/a/a/c/l/c;->b:Ljava/util/Set;

    .line 3
    iput-object p1, p0, Lc/c/a/a/c/k/k/z;->d:Ljava/util/Set;

    iput-object v0, p0, Lc/c/a/a/c/k/k/z;->c:Lc/c/a/a/c/k/a$a;

    return-void
.end method


# virtual methods
.method public final c(I)V
    .locals 0

    iget-object p1, p0, Lc/c/a/a/c/k/k/z;->f:Lc/c/a/a/g/e;

    invoke-interface {p1}, Lc/c/a/a/c/k/a$f;->g()V

    return-void
.end method

.method public final t(Lc/c/a/a/c/a;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/c/k/k/z;->g:Lc/c/a/a/c/k/k/a0;

    check-cast v0, Lc/c/a/a/c/k/k/d$b;

    invoke-virtual {v0, p1}, Lc/c/a/a/c/k/k/d$b;->b(Lc/c/a/a/c/a;)V

    return-void
.end method

.method public final y(Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lc/c/a/a/c/k/k/z;->f:Lc/c/a/a/g/e;

    invoke-interface {p1, p0}, Lc/c/a/a/g/e;->k(Lc/c/a/a/g/b/d;)V

    return-void
.end method
