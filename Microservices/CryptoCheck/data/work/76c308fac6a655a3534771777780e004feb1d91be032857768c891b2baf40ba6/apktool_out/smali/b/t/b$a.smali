.class public Lb/t/b$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/t/b;->l(Landroid/view/ViewGroup;Lb/t/q;Lb/t/q;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ViewGroup;

.field public final synthetic b:Landroid/graphics/drawable/BitmapDrawable;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:F


# direct methods
.method public constructor <init>(Lb/t/b;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    iput-object p2, p0, Lb/t/b$a;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lb/t/b$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p4, p0, Lb/t/b$a;->c:Landroid/view/View;

    iput p5, p0, Lb/t/b$a;->d:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lb/t/b$a;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Lb/t/v;->a(Landroid/view/View;)Lb/t/u;

    move-result-object p1

    iget-object v0, p0, Lb/t/b$a;->b:Landroid/graphics/drawable/BitmapDrawable;

    check-cast p1, Lb/t/t;

    .line 1
    iget-object p1, p1, Lb/t/t;->a:Landroid/view/ViewOverlay;

    invoke-virtual {p1, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lb/t/b$a;->c:Landroid/view/View;

    iget v0, p0, Lb/t/b$a;->d:F

    .line 3
    sget-object v1, Lb/t/v;->a:Lb/t/b0;

    invoke-virtual {v1, p1, v0}, Lb/t/b0;->e(Landroid/view/View;F)V

    return-void
.end method
