.class public final Lcom/tencent/a/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Yq:Lcom/tencent/a/a/f;


# instance fields
.field private a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/a/a/f;->a:I

    .line 50
    return-void
.end method

.method public static mS()I
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/tencent/a/a/f;->Yq:Lcom/tencent/a/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/a/a/f;

    invoke-direct {v0}, Lcom/tencent/a/a/f;-><init>()V

    sput-object v0, Lcom/tencent/a/a/f;->Yq:Lcom/tencent/a/a/f;

    :cond_0
    sget-object v0, Lcom/tencent/a/a/f;->Yq:Lcom/tencent/a/a/f;

    iget v0, v0, Lcom/tencent/a/a/f;->a:I

    return v0
.end method
