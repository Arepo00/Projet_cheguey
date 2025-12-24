.class public final enum Lb/g/c/b$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/g/c/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lb/g/c/b$a;

.field public static final enum c:Lb/g/c/b$a;

.field public static final enum d:Lb/g/c/b$a;

.field public static final enum e:Lb/g/c/b$a;

.field public static final enum f:Lb/g/c/b$a;

.field public static final enum g:Lb/g/c/b$a;

.field public static final enum h:Lb/g/c/b$a;

.field public static final synthetic i:[Lb/g/c/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lb/g/c/b$a;

    const-string v1, "INT_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/g/c/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/g/c/b$a;->b:Lb/g/c/b$a;

    new-instance v0, Lb/g/c/b$a;

    const-string v1, "FLOAT_TYPE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lb/g/c/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/g/c/b$a;->c:Lb/g/c/b$a;

    new-instance v0, Lb/g/c/b$a;

    const-string v1, "COLOR_TYPE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lb/g/c/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/g/c/b$a;->d:Lb/g/c/b$a;

    new-instance v0, Lb/g/c/b$a;

    const-string v1, "COLOR_DRAWABLE_TYPE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lb/g/c/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/g/c/b$a;->e:Lb/g/c/b$a;

    new-instance v0, Lb/g/c/b$a;

    const-string v1, "STRING_TYPE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lb/g/c/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/g/c/b$a;->f:Lb/g/c/b$a;

    new-instance v0, Lb/g/c/b$a;

    const-string v1, "BOOLEAN_TYPE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lb/g/c/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/g/c/b$a;->g:Lb/g/c/b$a;

    new-instance v0, Lb/g/c/b$a;

    const-string v1, "DIMENSION_TYPE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lb/g/c/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/g/c/b$a;->h:Lb/g/c/b$a;

    const/4 v1, 0x7

    new-array v1, v1, [Lb/g/c/b$a;

    sget-object v9, Lb/g/c/b$a;->b:Lb/g/c/b$a;

    aput-object v9, v1, v2

    sget-object v2, Lb/g/c/b$a;->c:Lb/g/c/b$a;

    aput-object v2, v1, v3

    sget-object v2, Lb/g/c/b$a;->d:Lb/g/c/b$a;

    aput-object v2, v1, v4

    sget-object v2, Lb/g/c/b$a;->e:Lb/g/c/b$a;

    aput-object v2, v1, v5

    sget-object v2, Lb/g/c/b$a;->f:Lb/g/c/b$a;

    aput-object v2, v1, v6

    sget-object v2, Lb/g/c/b$a;->g:Lb/g/c/b$a;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lb/g/c/b$a;->i:[Lb/g/c/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/g/c/b$a;
    .locals 1

    const-class v0, Lb/g/c/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/g/c/b$a;

    return-object p0
.end method

.method public static values()[Lb/g/c/b$a;
    .locals 1

    sget-object v0, Lb/g/c/b$a;->i:[Lb/g/c/b$a;

    invoke-virtual {v0}, [Lb/g/c/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/g/c/b$a;

    return-object v0
.end method
