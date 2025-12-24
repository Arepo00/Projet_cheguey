.class public final Lb/i/k/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/i/k/d$a;,
        Lb/i/k/d$b;,
        Lb/i/k/d$d;,
        Lb/i/k/d$c;
    }
.end annotation


# static fields
.field public static final a:Lb/i/k/c;

.field public static final b:Lb/i/k/c;

.field public static final c:Lb/i/k/c;

.field public static final d:Lb/i/k/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb/i/k/d$d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/i/k/d$d;-><init>(Lb/i/k/d$b;Z)V

    sput-object v0, Lb/i/k/d;->a:Lb/i/k/c;

    new-instance v0, Lb/i/k/d$d;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lb/i/k/d$d;-><init>(Lb/i/k/d$b;Z)V

    sput-object v0, Lb/i/k/d;->b:Lb/i/k/c;

    new-instance v0, Lb/i/k/d$d;

    sget-object v1, Lb/i/k/d$a;->a:Lb/i/k/d$a;

    invoke-direct {v0, v1, v2}, Lb/i/k/d$d;-><init>(Lb/i/k/d$b;Z)V

    sput-object v0, Lb/i/k/d;->c:Lb/i/k/c;

    new-instance v0, Lb/i/k/d$d;

    sget-object v1, Lb/i/k/d$a;->a:Lb/i/k/d$a;

    invoke-direct {v0, v1, v3}, Lb/i/k/d$d;-><init>(Lb/i/k/d$b;Z)V

    sput-object v0, Lb/i/k/d;->d:Lb/i/k/c;

    return-void
.end method

.method public static a(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
