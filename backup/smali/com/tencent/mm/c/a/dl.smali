.class public final Lcom/tencent/mm/c/a/dl;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bOr:Lcom/tencent/mm/c/a/dm;

.field public bOs:Lcom/tencent/mm/c/a/dn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/c/a/dl;->bLE:Z

    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/c/a/dl;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/dm;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/dm;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/dl;->bOr:Lcom/tencent/mm/c/a/dm;

    .line 18
    new-instance v0, Lcom/tencent/mm/c/a/dn;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/dn;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/dl;->bOs:Lcom/tencent/mm/c/a/dn;

    .line 8
    const-string v0, "NeedVerifyQQ"

    iput-object v0, p0, Lcom/tencent/mm/c/a/dl;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/dl;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/dl;->gbY:Z

    return-void
.end method
