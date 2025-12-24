.class public Lb/b/k/p;
.super Lb/i/m/s;
.source ""


# instance fields
.field public final synthetic a:Lb/b/k/k;


# direct methods
.method public constructor <init>(Lb/b/k/k;)V
    .locals 0

    iput-object p1, p0, Lb/b/k/p;->a:Lb/b/k/k;

    invoke-direct {p0}, Lb/i/m/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lb/b/k/p;->a:Lb/b/k/k;

    iget-object p1, p1, Lb/b/k/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p1, p0, Lb/b/k/p;->a:Lb/b/k/k;

    iget-object p1, p1, Lb/b/k/k;->s:Lb/i/m/q;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lb/i/m/q;->d(Lb/i/m/r;)Lb/i/m/q;

    iget-object p1, p0, Lb/b/k/p;->a:Lb/b/k/k;

    iput-object v0, p1, Lb/b/k/k;->s:Lb/i/m/q;

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lb/b/k/p;->a:Lb/b/k/k;

    iget-object p1, p1, Lb/b/k/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p1, p0, Lb/b/k/p;->a:Lb/b/k/k;

    iget-object p1, p1, Lb/b/k/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    iget-object p1, p0, Lb/b/k/p;->a:Lb/b/k/k;

    iget-object p1, p1, Lb/b/k/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/b/k/p;->a:Lb/b/k/k;

    iget-object p1, p1, Lb/b/k/k;->p:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lb/i/m/l;->U(Landroid/view/View;)V

    :cond_0
    return-void
.end method
