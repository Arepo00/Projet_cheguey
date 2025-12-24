.class public Lc/c/a/b/u/h;
.super Lb/i/m/a;
.source ""


# instance fields
.field public final synthetic d:Lc/c/a/b/u/f;


# direct methods
.method public constructor <init>(Lc/c/a/b/u/f;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/b/u/h;->d:Lc/c/a/b/u/f;

    invoke-direct {p0}, Lb/i/m/a;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;Lb/i/m/v/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/i/m/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object v1, p2, Lb/i/m/v/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    iget-object p1, p0, Lc/c/a/b/u/h;->d:Lc/c/a/b/u/f;

    .line 5
    iget-object p1, p1, Lc/c/a/b/u/f;->g0:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lc/c/a/b/u/h;->d:Lc/c/a/b/u/f;

    sget v0, Lc/c/a/b/i;->mtrl_picker_toggle_to_year_selection:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/c/a/b/u/h;->d:Lc/c/a/b/u/f;

    sget v0, Lc/c/a/b/i;->mtrl_picker_toggle_to_day_selection:I

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->t(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lb/i/m/v/b;->k(Ljava/lang/CharSequence;)V

    return-void
.end method
