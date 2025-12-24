.class public Lb/i/m/u$e;
.super Lb/i/m/u$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/m/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public d:Lb/i/f/b;


# direct methods
.method public constructor <init>(Lb/i/m/u;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/i/m/u$d;-><init>(Lb/i/m/u;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/i/m/u$e;->d:Lb/i/f/b;

    return-void
.end method


# virtual methods
.method public b()Lb/i/m/u;
    .locals 1

    iget-object v0, p0, Lb/i/m/u$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lb/i/m/u;->h(Landroid/view/WindowInsets;)Lb/i/m/u;

    move-result-object v0

    return-object v0
.end method

.method public c()Lb/i/m/u;
    .locals 1

    iget-object v0, p0, Lb/i/m/u$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Lb/i/m/u;->h(Landroid/view/WindowInsets;)Lb/i/m/u;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lb/i/f/b;
    .locals 4

    iget-object v0, p0, Lb/i/m/u$e;->d:Lb/i/f/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/i/m/u$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Lb/i/m/u$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Lb/i/m/u$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Lb/i/m/u$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lb/i/f/b;->a(IIII)Lb/i/f/b;

    move-result-object v0

    iput-object v0, p0, Lb/i/m/u$e;->d:Lb/i/f/b;

    :cond_0
    iget-object v0, p0, Lb/i/m/u$e;->d:Lb/i/f/b;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lb/i/m/u$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method
