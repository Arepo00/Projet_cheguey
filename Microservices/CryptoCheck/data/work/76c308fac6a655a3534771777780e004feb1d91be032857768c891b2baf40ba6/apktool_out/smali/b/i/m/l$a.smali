.class public Lb/i/m/l$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/m/l;->e0(Landroid/view/View;Lb/i/m/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/i/m/j;


# direct methods
.method public constructor <init>(Lb/i/m/j;)V
    .locals 0

    iput-object p1, p0, Lb/i/m/l$a;->a:Lb/i/m/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    new-instance v0, Lb/i/m/u;

    if-eqz p2, :cond_0

    invoke-direct {v0, p2}, Lb/i/m/u;-><init>(Landroid/view/WindowInsets;)V

    .line 2
    iget-object p2, p0, Lb/i/m/l$a;->a:Lb/i/m/j;

    invoke-interface {p2, p1, v0}, Lb/i/m/j;->a(Landroid/view/View;Lb/i/m/u;)Lb/i/m/u;

    move-result-object p1

    invoke-virtual {p1}, Lb/i/m/u;->g()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1
.end method
