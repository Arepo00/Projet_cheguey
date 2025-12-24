.class public Lb/i/m/v/c$b;
.super Lb/i/m/v/c$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/m/v/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lb/i/m/v/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/i/m/v/c$a;-><init>(Lb/i/m/v/c;)V

    return-void
.end method


# virtual methods
.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    iget-object v0, p0, Lb/i/m/v/c$a;->a:Lb/i/m/v/c;

    invoke-virtual {v0, p1}, Lb/i/m/v/c;->b(I)Lb/i/m/v/b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object p1, p1, Lb/i/m/v/b;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p1
.end method
