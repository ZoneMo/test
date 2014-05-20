.class public final Lcom/tencent/mm/c/a/ia;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bRw:Lcom/tencent/mm/c/a/ib;

.field public bRx:Lcom/tencent/mm/c/a/ic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/ia;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/ia;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 25
    new-instance v0, Lcom/tencent/mm/c/a/ib;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ib;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ia;->bRw:Lcom/tencent/mm/c/a/ib;

    .line 34
    new-instance v0, Lcom/tencent/mm/c/a/ic;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ic;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ia;->bRx:Lcom/tencent/mm/c/a/ic;

    .line 20
    const-string v0, "Voip"

    iput-object v0, p0, Lcom/tencent/mm/c/a/ia;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/ia;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/ia;->gbY:Z

    return-void
.end method
