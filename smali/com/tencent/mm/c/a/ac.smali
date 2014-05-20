.class public final Lcom/tencent/mm/c/a/ac;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bMr:Lcom/tencent/mm/c/a/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/ac;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/ac;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/ad;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ad;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ac;->bMr:Lcom/tencent/mm/c/a/ad;

    .line 8
    const-string v0, "ExtAgentLife"

    iput-object v0, p0, Lcom/tencent/mm/c/a/ac;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/ac;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/ac;->gbY:Z

    return-void
.end method
