.class public Lb/i/m/u$g;
.super Lb/i/m/u$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/m/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# direct methods
.method public constructor <init>(Lb/i/m/u;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/i/m/u$f;-><init>(Lb/i/m/u;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public g(IIII)Lb/i/m/u;
    .locals 1

    iget-object v0, p0, Lb/i/m/u$d;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lb/i/m/u;->h(Landroid/view/WindowInsets;)Lb/i/m/u;

    move-result-object p1

    return-object p1
.end method
