.class public final Lcom/tencent/mm/c/a/cl;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bNO:Lcom/tencent/mm/c/a/cm;

.field public bNP:Lcom/tencent/mm/c/a/cn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/cl;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/cl;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/cm;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/cm;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/cl;->bNO:Lcom/tencent/mm/c/a/cm;

    .line 20
    new-instance v0, Lcom/tencent/mm/c/a/cn;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/cn;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/cl;->bNP:Lcom/tencent/mm/c/a/cn;

    .line 8
    const-string v0, "GetA8KeyRedirect"

    iput-object v0, p0, Lcom/tencent/mm/c/a/cl;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/cl;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/cl;->gbY:Z

    return-void
.end method
