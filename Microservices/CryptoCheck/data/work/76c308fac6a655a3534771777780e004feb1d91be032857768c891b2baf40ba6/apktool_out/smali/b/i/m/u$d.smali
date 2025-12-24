.class public Lb/i/m/u$d;
.super Lb/i/m/u$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/m/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Landroid/view/WindowInsets;

.field public c:Lb/i/f/b;


# direct methods
.method public constructor <init>(Lb/i/m/u;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/i/m/u$h;-><init>(Lb/i/m/u;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/i/m/u$d;->c:Lb/i/f/b;

    iput-object p2, p0, Lb/i/m/u$d;->b:Landroid/view/WindowInsets;

    return-void
.end method


# virtual methods
.method public final f()Lb/i/f/b;
    .locals 4

    iget-object v0, p0, Lb/i/m/u$d;->c:Lb/i/f/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/i/m/u$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Lb/i/m/u$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Lb/i/m/u$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Lb/i/m/u$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lb/i/f/b;->a(IIII)Lb/i/f/b;

    move-result-object v0

    iput-object v0, p0, Lb/i/m/u$d;->c:Lb/i/f/b;

    :cond_0
    iget-object v0, p0, Lb/i/m/u$d;->c:Lb/i/f/b;

    return-object v0
.end method

.method public g(IIII)Lb/i/m/u;
    .locals 3

    iget-object v0, p0, Lb/i/m/u$d;->b:Landroid/view/WindowInsets;

    invoke-static {v0}, Lb/i/m/u;->h(Landroid/view/WindowInsets;)Lb/i/m/u;

    move-result-object v0

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    new-instance v1, Lb/i/m/u$b;

    invoke-direct {v1, v0}, Lb/i/m/u$b;-><init>(Lb/i/m/u;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lb/i/m/u$a;

    invoke-direct {v1, v0}, Lb/i/m/u$a;-><init>(Lb/i/m/u;)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lb/i/m/u$d;->f()Lb/i/f/b;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lb/i/m/u;->f(Lb/i/f/b;IIII)Lb/i/f/b;

    move-result-object v0

    .line 3
    invoke-virtual {v1, v0}, Lb/i/m/u$c;->c(Lb/i/f/b;)V

    .line 4
    invoke-virtual {p0}, Lb/i/m/u$h;->e()Lb/i/f/b;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lb/i/m/u;->f(Lb/i/f/b;IIII)Lb/i/f/b;

    move-result-object p1

    .line 5
    invoke-virtual {v1, p1}, Lb/i/m/u$c;->b(Lb/i/f/b;)V

    .line 6
    invoke-virtual {v1}, Lb/i/m/u$c;->a()Lb/i/m/u;

    move-result-object p1

    return-object p1
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lb/i/m/u$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method
