.class public final La/a/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final hwr:I

.field static final hws:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x10

    .line 80
    sput v0, La/a/a/b/a;->hwr:I

    .line 83
    const/16 v0, 0x1a

    .line 82
    sput v0, La/a/a/b/a;->hws:I

    .line 83
    return-void
.end method

.method public static bt(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static oM(I)I
    .locals 1
    .parameter

    .prologue
    .line 61
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static oN(I)I
    .locals 1
    .parameter

    .prologue
    .line 66
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
