.class public final Lcom/tencent/mm/c/a/ct;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bNW:Lcom/tencent/mm/c/a/cu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/ct;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/ct;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/cu;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/cu;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ct;->bNW:Lcom/tencent/mm/c/a/cu;

    .line 8
    const-string v0, "GetSafeDeviceType"

    iput-object v0, p0, Lcom/tencent/mm/c/a/ct;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/ct;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/ct;->gbY:Z

    return-void
.end method
