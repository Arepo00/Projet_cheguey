.class public Lb/b/k/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/i/m/j;


# instance fields
.field public final synthetic a:Lb/b/k/k;


# direct methods
.method public constructor <init>(Lb/b/k/k;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/l;->a:Lb/b/k/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lb/i/m/u;)Lb/i/m/u;
    .locals 6

    invoke-virtual {p2}, Lb/i/m/u;->d()I

    move-result v0

    iget-object v1, p0, Lb/b/k/l;->a:Lb/b/k/k;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lb/b/k/k;->N(Lb/i/m/u;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lb/i/m/u;->b()I

    move-result v0

    invoke-virtual {p2}, Lb/i/m/u;->c()I

    move-result v2

    invoke-virtual {p2}, Lb/i/m/u;->a()I

    move-result v3

    .line 1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v4, v5, :cond_0

    new-instance v4, Lb/i/m/u$b;

    invoke-direct {v4, p2}, Lb/i/m/u$b;-><init>(Lb/i/m/u;)V

    goto :goto_0

    :cond_0
    new-instance v4, Lb/i/m/u$a;

    invoke-direct {v4, p2}, Lb/i/m/u$a;-><init>(Lb/i/m/u;)V

    .line 2
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lb/i/f/b;->a(IIII)Lb/i/f/b;

    move-result-object p2

    .line 3
    invoke-virtual {v4, p2}, Lb/i/m/u$c;->c(Lb/i/f/b;)V

    .line 4
    invoke-virtual {v4}, Lb/i/m/u$c;->a()Lb/i/m/u;

    move-result-object p2

    .line 5
    :cond_1
    invoke-static {p1, p2}, Lb/i/m/l;->L(Landroid/view/View;Lb/i/m/u;)Lb/i/m/u;

    move-result-object p1

    return-object p1
.end method
