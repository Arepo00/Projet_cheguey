.class public Lc/c/a/a/c/l/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/a/c/l/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/c/l/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/a/c/l/b;


# direct methods
.method public constructor <init>(Lc/c/a/a/c/l/b;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/c/l/b$d;->a:Lc/c/a/a/c/l/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/a/c/a;)V
    .locals 2

    invoke-virtual {p1}, Lc/c/a/a/c/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lc/c/a/a/c/l/b$d;->a:Lc/c/a/a/c/l/b;

    const/4 v0, 0x0

    move-object v1, p1

    check-cast v1, Lc/c/a/a/c/l/g;

    .line 1
    iget-object v1, v1, Lc/c/a/a/c/l/g;->v:Ljava/util/Set;

    .line 2
    invoke-virtual {p1, v0, v1}, Lc/c/a/a/c/l/b;->n(Lc/c/a/a/c/l/k;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object v0, p0, Lc/c/a/a/c/l/b$d;->a:Lc/c/a/a/c/l/b;

    .line 3
    iget-object v0, v0, Lc/c/a/a/c/l/b;->n:Lc/c/a/a/c/l/b$b;

    if-eqz v0, :cond_1

    .line 4
    check-cast v0, Lc/c/a/a/c/l/x;

    .line 5
    iget-object v0, v0, Lc/c/a/a/c/l/x;->a:Lc/c/a/a/c/k/k/h;

    invoke-interface {v0, p1}, Lc/c/a/a/c/k/k/h;->t(Lc/c/a/a/c/a;)V

    :cond_1
    return-void
.end method
