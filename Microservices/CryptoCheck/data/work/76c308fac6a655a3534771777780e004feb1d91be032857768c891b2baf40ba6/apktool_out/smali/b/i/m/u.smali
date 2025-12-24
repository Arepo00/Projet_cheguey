.class public Lb/i/m/u;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/i/m/u$b;,
        Lb/i/m/u$a;,
        Lb/i/m/u$c;,
        Lb/i/m/u$g;,
        Lb/i/m/u$f;,
        Lb/i/m/u$e;,
        Lb/i/m/u$d;,
        Lb/i/m/u$h;
    }
.end annotation


# static fields
.field public static final b:Lb/i/m/u;


# instance fields
.field public final a:Lb/i/m/u$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/i/m/u$b;

    invoke-direct {v0}, Lb/i/m/u$b;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lb/i/m/u$a;

    invoke-direct {v0}, Lb/i/m/u$a;-><init>()V

    .line 2
    :goto_0
    invoke-virtual {v0}, Lb/i/m/u$c;->a()Lb/i/m/u;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lb/i/m/u;->a:Lb/i/m/u$h;

    invoke-virtual {v0}, Lb/i/m/u$h;->a()Lb/i/m/u;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lb/i/m/u;->a:Lb/i/m/u$h;

    invoke-virtual {v0}, Lb/i/m/u$h;->b()Lb/i/m/u;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lb/i/m/u;->a:Lb/i/m/u$h;

    invoke-virtual {v0}, Lb/i/m/u$h;->c()Lb/i/m/u;

    move-result-object v0

    .line 6
    sput-object v0, Lb/i/m/u;->b:Lb/i/m/u;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/i/m/u$g;

    invoke-direct {v0, p0, p1}, Lb/i/m/u$g;-><init>(Lb/i/m/u;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    new-instance v0, Lb/i/m/u$f;

    invoke-direct {v0, p0, p1}, Lb/i/m/u$f;-><init>(Lb/i/m/u;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lb/i/m/u$e;

    invoke-direct {v0, p0, p1}, Lb/i/m/u$e;-><init>(Lb/i/m/u;Landroid/view/WindowInsets;)V

    :goto_0
    iput-object v0, p0, Lb/i/m/u;->a:Lb/i/m/u$h;

    return-void
.end method

.method public constructor <init>(Lb/i/m/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lb/i/m/u$h;

    invoke-direct {p1, p0}, Lb/i/m/u$h;-><init>(Lb/i/m/u;)V

    iput-object p1, p0, Lb/i/m/u;->a:Lb/i/m/u$h;

    return-void
.end method

.method public static f(Lb/i/f/b;IIII)Lb/i/f/b;
    .locals 5

    iget v0, p0, Lb/i/f/b;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lb/i/f/b;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lb/i/f/b;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lb/i/f/b;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Lb/i/f/b;->a(IIII)Lb/i/f/b;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/view/WindowInsets;)Lb/i/m/u;
    .locals 1

    new-instance v0, Lb/i/m/u;

    if-eqz p0, :cond_0

    invoke-direct {v0, p0}, Lb/i/m/u;-><init>(Landroid/view/WindowInsets;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    .line 1
    throw p0
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-virtual {p0}, Lb/i/m/u;->e()Lb/i/f/b;

    move-result-object v0

    iget v0, v0, Lb/i/f/b;->d:I

    return v0
.end method

.method public b()I
    .locals 1

    invoke-virtual {p0}, Lb/i/m/u;->e()Lb/i/f/b;

    move-result-object v0

    iget v0, v0, Lb/i/f/b;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    invoke-virtual {p0}, Lb/i/m/u;->e()Lb/i/f/b;

    move-result-object v0

    iget v0, v0, Lb/i/f/b;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    invoke-virtual {p0}, Lb/i/m/u;->e()Lb/i/f/b;

    move-result-object v0

    iget v0, v0, Lb/i/f/b;->b:I

    return v0
.end method

.method public e()Lb/i/f/b;
    .locals 1

    iget-object v0, p0, Lb/i/m/u;->a:Lb/i/m/u$h;

    invoke-virtual {v0}, Lb/i/m/u$h;->f()Lb/i/f/b;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lb/i/m/u;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lb/i/m/u;

    iget-object v0, p0, Lb/i/m/u;->a:Lb/i/m/u$h;

    iget-object p1, p1, Lb/i/m/u;->a:Lb/i/m/u$h;

    .line 1
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lb/i/m/u;->a:Lb/i/m/u$h;

    instance-of v1, v0, Lb/i/m/u$d;

    if-eqz v1, :cond_0

    check-cast v0, Lb/i/m/u$d;

    iget-object v0, v0, Lb/i/m/u$d;->b:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lb/i/m/u;->a:Lb/i/m/u$h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb/i/m/u$h;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method
